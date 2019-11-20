cmake_minimum_required(VERSION 3.10)	 # Проверка версии CMake.
										# Если версия установленой программы
										# старее указаной, произайдёт аварийный выход.

project(main VERSION 1.2.3.4 LANGUAGES CXX)			# Название проекта

message("Project: ${PROJECT_NAME} ${main_VERSION}")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

get_filename_component(MY_PROJ_DIR  "../" ABSOLUTE)

set(MY_FOO_FPATH ${MY_PROJ_DIR}/src/foo/foo.cpp)

message("MY_FOO_FPATH = ${MY_FOO_FPATH}")

message("${CMAKE_CXX_FLAGS}")

include_directories(foo)

add_custom_command(
    OUTPUT ${MY_FOO_FPATH}   
    COMMAND ../generator/generator.sh
)

set(SOURCE_EXE main.cpp)		# Установка переменной со списком исходников для исполняемого файла


add_library(foo STATIC  ${MY_FOO_FPATH})	# Создание статической библиотеки с именем foo

add_executable(main ${SOURCE_EXE})	# Создает исполняемый файл с именем main

target_link_libraries(main foo)		# Линковка программы с библиотекой

install(TARGETS main DESTINATION bin)



