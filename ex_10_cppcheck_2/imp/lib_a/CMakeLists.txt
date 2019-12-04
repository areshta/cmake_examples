#todo place macro to common file

cmake_minimum_required(VERSION 2.8)	

message("lib_a make")

set(SOURCE_LIB "${CMAKE_CXX_FLAGS} -std=c++11")

include_directories(src)

file(GLOB LIB_SRC src/private/*.cpp)

if(NOT DEFINED MY_LIBS_DIR)
   set(MY_LIBS_DIR "libs")
   get_filename_component(MY_PROJ_DIR  "../../" ABSOLUTE)
   set(CMAKE_INSTALL_PREFIX "${MY_PROJ_DIR}")
endif()

add_library(_a STATIC "${LIB_SRC}")

   
mycheck(MYTRG _a FILES ${LIB_SRC})

#foreach(loop_var ${LIB_SRC} )
#add_custom_command(TARGET _a
#    PRE_BUILD
#       COMMAND ${MY_PROJ_DIR}/build/run_cppcheck.sh ${loop_var}
#    VERBATIM
#)
#endforeach(loop_var)





