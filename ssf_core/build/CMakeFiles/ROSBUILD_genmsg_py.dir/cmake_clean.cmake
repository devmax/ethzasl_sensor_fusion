FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/ssf_core/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/ssf_core/msg/__init__.py"
  "../src/ssf_core/msg/_ext_state.py"
  "../src/ssf_core/msg/_DoubleArrayStamped.py"
  "../src/ssf_core/msg/_ext_ekf.py"
  "../src/ssf_core/msg/_ext_imu.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
