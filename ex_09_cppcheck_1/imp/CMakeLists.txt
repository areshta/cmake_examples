cmake_minimum_required(VERSION 2.8)	 # Проверка версии CMake.
										# Если версия установленой программы
										# старее указаной, произайдёт аварийный выход.

project(main CXX)			# Название проекта

include(../config/config.cmake)

add_custom_target(cpp_check ALL COMMAND cppcheck --output-file=${MY_PROJ_DIR}/lint/result.txt ${MY_PROJ_DIR}/imp)

message(${CMAKE_SOURCE_DIR})

add_subdirectory(lib_b)

add_subdirectory(lib_a)

add_subdirectory(app)












