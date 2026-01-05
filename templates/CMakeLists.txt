cmake_minimum_required(VERSION 3.20)

project(ProjectName VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_compile_options(-Wall -Wextra -Wpedantic -Werror)

set(SOURCES main.cpp)

add_executable(main ${SOURCES})
install(TARGETS calc DESTINATION bin)
