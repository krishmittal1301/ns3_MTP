file(REMOVE_RECURSE
  "../../lib/libns3.36.1-point-to-point-debug.pdb"
  "../../lib/libns3.36.1-point-to-point-debug.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libpoint-to-point.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
