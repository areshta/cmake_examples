cmake_minimum_required(VERSION 2.8)	 # Проверка версии CMake.
										# Если версия установленой программы
										# старее указаной, произайдёт аварийный выход.

message("app make")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

message("${CMAKE_CXX_FLAGS}")

include_directories(src)

set(SOURCE_EXE src/private/main.cpp)		# Установка переменной со списком исходников для исполняемого файла

add_executable(main "${SOURCE_EXE}")	# Создает исполняемый файл с именем main

target_link_libraries(main _a _b)		# Линковка программы с библиотекой

install(TARGETS main DESTINATION bin)




