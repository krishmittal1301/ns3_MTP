file(REMOVE_RECURSE
  "../../lib/libns3.36.1-lte-debug.pdb"
  "../../lib/libns3.36.1-lte-debug.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/liblte.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
