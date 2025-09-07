# CMake generated Testfile for 
# Source directory: /home/krish/MTP/ns3/ns-allinone-3.36.1/ns-3.36.1/src/tap-bridge
# Build directory: /home/krish/MTP/ns3/ns-allinone-3.36.1/ns-3.36.1/build/src/tap-bridge
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ctest-tap-creator "ns3.36.1-tap-creator-debug")
set_tests_properties(ctest-tap-creator PROPERTIES  WORKING_DIRECTORY "/home/krish/MTP/ns3/ns-allinone-3.36.1/ns-3.36.1/build/src/tap-bridge/" _BACKTRACE_TRIPLES "/home/krish/MTP/ns3/ns-allinone-3.36.1/ns-3.36.1/build-support/macros-and-definitions.cmake;1337;add_test;/home/krish/MTP/ns3/ns-allinone-3.36.1/ns-3.36.1/src/tap-bridge/CMakeLists.txt;47;set_runtime_outputdirectory;/home/krish/MTP/ns3/ns-allinone-3.36.1/ns-3.36.1/src/tap-bridge/CMakeLists.txt;0;")
subdirs("examples")
