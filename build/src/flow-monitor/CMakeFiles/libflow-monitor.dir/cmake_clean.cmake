file(REMOVE_RECURSE
  "../../lib/libns3.36.1-flow-monitor-debug.pdb"
  "../../lib/libns3.36.1-flow-monitor-debug.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libflow-monitor.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
