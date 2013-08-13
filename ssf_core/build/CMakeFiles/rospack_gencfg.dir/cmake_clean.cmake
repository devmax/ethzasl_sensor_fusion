FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/ssf_core/msg"
  "../msg_gen"
  "CMakeFiles/rospack_gencfg"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/rospack_gencfg.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
