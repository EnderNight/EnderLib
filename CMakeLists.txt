cmake_minimum_required(VERSION 3.30)

project(EnderLib VERSION 0.1 LANGUAGES C)

set(CMAKE_C_STANDARD 23)
set(CMAKE_C_STANDARD_REQUIRED True)
set(CMAKE_EXPORT_COMPILE_COMMANDS True)

add_library(enderlib SHARED src/vector.c)
target_include_directories(enderlib PRIVATE include)

add_library(enderlib_static STATIC src/vector.c)
target_include_directories(enderlib_static PRIVATE include)

add_executable(example examples/example.c)
target_include_directories(example PRIVATE include)
target_link_libraries(enderlib)
