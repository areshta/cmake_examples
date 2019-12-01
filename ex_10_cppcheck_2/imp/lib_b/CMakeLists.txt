cmake_minimum_required(VERSION 2.8)	 # Проверка версии CMake.
										# Если версия установленой программы
										# старее указаной, произайдёт аварийный выход.

message("lib_b make")


set(SOURCE_LIB "${CMAKE_CXX_FLAGS} -std=c++11")

include_directories(src)

file(GLOB LIB_SRC src/private/*.cpp)

if(NOT DEFINED MY_LIBS_DIR)
   set(MY_LIBS_DIR "libs")
   get_filename_component(MY_PROJ_DIR  "../../" ABSOLUTE)
   set(CMAKE_INSTALL_PREFIX "${MY_PROJ_DIR}")
endif()

add_library(_b STATIC "${LIB_SRC}")




