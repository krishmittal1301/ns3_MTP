file(REMOVE_RECURSE
  "../../lib/libns3.36.1-energy-debug.pdb"
  "../../lib/libns3.36.1-energy-debug.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libenergy.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
