FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/sensor_fusion_comm/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/DoubleArrayStamped.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_DoubleArrayStamped.lisp"
  "../msg_gen/lisp/ExtEkf.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_ExtEkf.lisp"
  "../msg_gen/lisp/ExtState.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_ExtState.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
