cmake_minimum_required(VERSION 3.10)	 # Проверка версии CMake.
										# Если версия установленой программы
										# старее указаной, произайдёт аварийный выход.

project(main VERSION 1.2.3.4)			# Название проекта

message("Project: ${PROJECT_NAME} ${main_VERSION}")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

message("${CMAKE_CXX_FLAGS}")

include_directories(foo)

configure_file(version.cpp.in ${CMAKE_CURRENT_SOURCE_DIR}/version.cpp) #generate version. see .in file

set(SOURCE_EXE main.cpp version.cpp)		# Установка переменной со списком исходников для исполняемого файла

set(SOURCE_LIB ./foo/foo.cpp)			# Тоже самое, но для библиотеки


add_library(foo STATIC ${SOURCE_LIB})	# Создание статической библиотеки с именем foo

add_executable(main ${SOURCE_EXE})	# Создает исполняемый файл с именем main

target_link_libraries(main foo)		# Линковка программы с библиотекой

install(TARGETS main DESTINATION bin)



