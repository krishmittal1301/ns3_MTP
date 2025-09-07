file(REMOVE_RECURSE
  "../../lib/libns3.36.1-buildings-debug.pdb"
  "../../lib/libns3.36.1-buildings-debug.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libbuildings.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
