file(REMOVE_RECURSE
  "../../lib/libns3.36.1-core-debug.pdb"
  "../../lib/libns3.36.1-core-debug.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libcore.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
