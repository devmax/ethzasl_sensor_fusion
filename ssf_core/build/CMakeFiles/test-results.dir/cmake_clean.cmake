FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/ssf_core/msg"
  "../msg_gen"
  "CMakeFiles/test-results"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/test-results.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
