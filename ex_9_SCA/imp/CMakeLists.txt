cmake_minimum_required(VERSION 2.8)	 # Проверка версии CMake.
										# Если версия установленой программы
										# старее указаной, произайдёт аварийный выход.

project(main CXX)			# Название проекта


#file(GLOB_RECURSE ALL_SOURCE_FILES *.cpp *.h)

#add_custom_target(
#        cppcheck
#        COMMAND /usr/bin/cppcheck
#        ${ALL_SOURCE_FILES}
#)

#execute_process(COMMAND "cppcheck ${MY_PROJ_DIR}/imp > ${MY_PROJ_DIR}/lint/result.txt")
#execute_process(COMMAND "echo aaaaaaaaaaaaaaaaaaaaaaa")

execute_process(COMMAND /bin/echo aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa > ${MY_PROJ_DIR}/lint/report.txt OUTPUT_VARIABLE CMD_OUT RESULT_VARIABLE CMD_ERROR )
MESSAGE( STATUS "CMD_ERROR:" ${CMD_ERROR})

#add_custom_target(ech ALL COMMAND /bin/echo aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa)

return()

message(${CMAKE_SOURCE_DIR})

include(../config/config.cmake)

add_subdirectory(lib_b)

add_subdirectory(lib_a)

add_subdirectory(app)







