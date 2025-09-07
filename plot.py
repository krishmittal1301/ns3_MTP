import re
import pandas as pd
import matplotlib.pyplot as plt

# Step 1: Read and parse the file
data = []
with open('delayLog.txt', 'r') as f:
    for line in f:
        # Extract needed fields using regex
        match = re.search(r'Delay:\s+([0-9.e-]+)\s+PacketSize:\s+(\d+)\s+DistributionType:\s+(\d+)\s+Time:\s+\+([0-9.e+-]+)ns', line)
        if match:
            delay = float(match.group(1))
            packet_size = int(match.group(2))
            dist_type = int(match.group(3))
            time_ns = float(match.group(4))

            data.append({
                'Delay': delay,
                'PacketSize': packet_size,
                'DistributionType': dist_type,
                'Time': time_ns
            })

# Step 2: Load into DataFrame
df = pd.DataFrame(data)

# print(df.head())

# Step 3: Compute basic stats
counts = df['DistributionType'].value_counts()
avg_delay = df.groupby('DistributionType')['Delay'].mean()

print("Packet counts by DistributionType:")
print(counts)
print("\nAverage Delay by DistributionType:")
print(avg_delay)

# Step 4: Plot Delay over Time
plt.figure(figsize=(10, 5))
# for dtype in df['DistributionType'].unique():
#     subset = df[df['DistributionType'] == dtype]
#     plt.plot(subset['Time'], subset['Delay'], label=f'DistributionType {dtype}', marker='o')

# plt.xlabel('Time (ns)')
# plt.ylabel('Delay (s)')
# plt.title('Packet Delay vs Time by Distribution Type')
# plt.legend()
# plt.grid(True)
# plt.savefig("plot.png")


dtypes = df['DistributionType'].unique()
num_types = len(dtypes)

# Create subplots (one row per distribution type)
fig, axes = plt.subplots(num_types, 1, figsize=(12, 5 * num_types), sharex=True)

# Ensure axes is iterable (even if only one type)
if num_types == 1:
    axes = [axes]

for i, dtype in enumerate(dtypes):
    subset = df[df['DistributionType'] == dtype]
    axes[i].scatter(subset['Time'], subset['Delay'], marker='o', linestyle='-', label=f'DistributionType {dtype}')
    axes[i].set_ylabel('Delay (s)')
    axes[i].set_title(f'Packet Delay vs Time (DistributionType {dtype})')
    axes[i].legend()
    axes[i].grid(True)

# Common x-axis label
plt.xlabel('Time (ns)')
plt.tight_layout()
plt.savefig("subplots_delay_vs_time.png")

