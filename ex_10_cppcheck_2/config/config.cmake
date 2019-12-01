set(MY_CONFIG_VALUE "test config value")
get_filename_component(MY_PROJ_DIR  "../" ABSOLUTE)
include_directories(${MY_PROJ_DIR}/imp/lib_a/src)
include_directories(${MY_PROJ_DIR}/imp/lib_b/src)
set(CMAKE_INSTALL_PREFIX "${MY_PROJ_DIR}")
#set(CMAKE_CXX_CPPCHECK "/usr/bin/cppcheck;--output-file=${MY_PROJ_DIR}/lint/result.txt") файл будет каждый раз затмраться
#set(MY_LIBS_DIR "../libs")
