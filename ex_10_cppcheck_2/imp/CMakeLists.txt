cmake_minimum_required(VERSION 2.8)	 # Проверка версии CMake.
										# Если версия установленой программы
										# старее указаной, произайдёт аварийный выход.

project(main CXX)			# Название проекта

include(../config/config.cmake)
include(../config/my_macro.cmake)

file(GLOB_RECURSE ALL_SOURCE_FILES *.cpp *.h)
#message("${ALL_SOURCE_FILES}")


#add_custom_target(
#        mycheck ALL
#        COMMAND ${MY_PROJ_DIR}/build/run_cppcheck.sh        
#        SOURCES ${ALL_SOURCE_FILES}
#)




#target_sources(mycheck PRIVATE ${ALL_SOURCE_FILES})


#MESSAGE( STATUS "CMD_ERROR:" ${CMD_ERROR})

#add_custom_target(cpp_check ALL COMMAND cppcheck --output-file=${MY_PROJ_DIR}/lint/result.txt ${MY_PROJ_DIR}/imp)

message(${CMAKE_SOURCE_DIR})

add_subdirectory(lib_b)

add_subdirectory(lib_a)

add_subdirectory(app)












