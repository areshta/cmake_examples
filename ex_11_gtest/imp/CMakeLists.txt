cmake_minimum_required(VERSION 3.0)	 # Проверка версии CMake.
										# Если версия установленой программы
										# старее указаной, произайдёт аварийный выход.

project(main CXX)			# Название проекта


message(${CMAKE_SOURCE_DIR})

include(../cmake/config.cmake)

add_subdirectory(lib_b)

add_subdirectory(lib_a)

add_subdirectory(app)

include(../cmake/googletest.cmake)
fetch_googletest(
    ${MY_PROJ_DIR}/cmake
    ${MY_PROJ_DIR}/tmp/googletest
    )

enable_testing()
add_subdirectory(test)


