# CMake generated Testfile for 
# Source directory: /home/krish/MTP/ns3/ns-allinone-3.36.1/ns-3.36.1
# Build directory: /home/krish/MTP/ns3/ns-allinone-3.36.1/ns-3.36.1/cmake-cache
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ctest-stdlib_pch_exec "ns3.36.1-stdlib_pch_exec-debug")
set_tests_properties(ctest-stdlib_pch_exec PROPERTIES  WORKING_DIRECTORY "/home/krish/MTP/ns3/ns-allinone-3.36.1/ns-3.36.1/cmake-cache/" _BACKTRACE_TRIPLES "/home/krish/MTP/ns3/ns-allinone-3.36.1/ns-3.36.1/build-support/macros-and-definitions.cmake;1337;add_test;/home/krish/MTP/ns3/ns-allinone-3.36.1/ns-3.36.1/build-support/macros-and-definitions.cmake;1268;set_runtime_outputdirectory;/home/krish/MTP/ns3/ns-allinone-3.36.1/ns-3.36.1/CMakeLists.txt;125;process_options;/home/krish/MTP/ns3/ns-allinone-3.36.1/ns-3.36.1/CMakeLists.txt;0;")
subdirs("src")
subdirs("examples")
subdirs("scratch")
subdirs("utils")
