file(REMOVE_RECURSE
  "../../lib/libns3.36.1-spectrum-debug.pdb"
  "../../lib/libns3.36.1-spectrum-debug.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libspectrum.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
