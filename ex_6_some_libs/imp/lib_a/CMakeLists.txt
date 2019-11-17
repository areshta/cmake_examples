cmake_minimum_required(VERSION 2.8)	 # Проверка версии CMake.
										# Если версия установленой программы
										# старее указаной, произайдёт аварийный выход.

message("lib_a make")


set(SOURCE_LIB "${CMAKE_CXX_FLAGS} -std=c++11")

include_directories(src)

file(GLOB LIB_SRC src/private/*.cpp)

message("${LIB_SRC}")

if(NOT DEFINED MY_LIBS_DIR)
  set(MY_LIBS_DIR "libs")
endif()

message("${MY_LIBS_DIR}")
set(CMAKE_INSTALL_PREFIX "../../")

add_library(_a STATIC "${LIB_SRC}")

install(TARGETS _a DESTINATION "${MY_LIBS_DIR}")



