file(REMOVE_RECURSE
  "../../lib/libns3.36.1-internet-debug.pdb"
  "../../lib/libns3.36.1-internet-debug.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libinternet.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
