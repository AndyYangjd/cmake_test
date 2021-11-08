cmake_minimum_required(VERSION 3.1)

include_directories(${PROJECT_SOURCE_DIR}/include)

add_library(hello SHARED hello.c)
set_target_properties(hello PROPERTIES CLEAN_DIRECT_OUTPUT 1)
set_target_properties(hello PROPERTIES VERSION 1.0 SOVERSION 0)

add_library(hello_static STATIC hello.c)
set_target_properties(hello_static PROPERTIES OUTPUT_NAME "hello" CLEAN_DIRECT_OUTPUT 1)

install(TARGETS hello hello_static
    LIBRARY DESTINATION hello/lib
    ARCHIVE DESTINATION hello/lib
)