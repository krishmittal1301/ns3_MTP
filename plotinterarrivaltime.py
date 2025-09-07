import pandas as pd
import matplotlib.pyplot as plt
import re

# Step 1: Read and parse the file
data = []
with open('incomingLog.txt', 'r') as f:
    for line in f:
        lst = line.split(':')
        parts = [part.strip().split('\t') for part in lst]
        
        dist_type = int(parts[1][0])
        time_ns = float(parts[2][0][:-2])
        queue_length = int(parts[3][0][:-1])

        data.append({
            'DistributionType': dist_type,
            'Time': time_ns,
            'queue_length': queue_length
        })

# Step 2: Load into DataFrame
df = pd.DataFrame(data)
df = df.sort_values('Time').reset_index(drop=True)

# Step 3: Calculate inter-arrival times in milliseconds
df['InterArrival'] = df['Time'].diff().fillna(0) / 1e6

# Step 4: Separate data
exp_inter_arrival = df[df['DistributionType'] == 0]['InterArrival']
const_inter_arrival = df[df['DistributionType'] == 3]['InterArrival']

print("Packets arrived with Exponential Distribution (Type 0):", len(exp_inter_arrival))
print("Packets arrived with Constant Distribution (Type 3):", len(const_inter_arrival))

# Filter large inter-arrival times
exp_inter_arrival_filtered = exp_inter_arrival[exp_inter_arrival < 100]
const_inter_arrival_filtered = const_inter_arrival[const_inter_arrival < 100]

# Step 5: Create Subplots
fig, axes = plt.subplots(3, 1, figsize=(12, 18))

# Histogram: Exponential Inter-Arrival Time
axes[0].hist(exp_inter_arrival_filtered, bins=50, alpha=0.7, label='Exponential (DistType 0)', color='blue')
axes[0].set_xlabel('Inter-Arrival Time (ms)')
axes[0].set_ylabel('Frequency')
axes[0].set_title('Exponential Inter-Arrival Time Distribution')
axes[0].legend()
axes[0].grid(True)

# Histogram: Constant Inter-Arrival Time
axes[1].hist(const_inter_arrival_filtered, bins=50, alpha=0.7, label='Constant (DistType 3)', color='orange')
axes[1].set_xlabel('Inter-Arrival Time (ms)')
axes[1].set_ylabel('Frequency')
axes[1].set_title('Constant Inter-Arrival Time Distribution')
axes[1].legend()
axes[1].grid(True)

# Queue Length vs Time
axes[2].plot(df['Time'], df['queue_length'], marker='o', linestyle='-', label='Queue Length', color='green')
axes[2].set_xlabel('Time (ns)')
axes[2].set_ylabel('Queue Length')
axes[2].set_title('Queue Length Over Time')
axes[2].legend()
axes[2].grid(True)

plt.tight_layout()
plt.savefig("combined_analysis.png")
