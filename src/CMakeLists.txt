cmake_minimum_required(VERSION 3.1)

# include_directories(${PROJECT_SOURCE_DIR}/include)
# link_directories(${CMAKE_BINARY_DIR}/lib)


find_package(HELLO)
if(HELLO_FOUND)
    include_directories(${HELLO_INCLUDE_DIR})
else(HELLO_FOUND)
    message(FATAL_ERROR "Hello library not found")
ENDIF(HELLO_FOUND)

add_executable(hello_main main.c)
target_link_libraries(hello_main ${HELLO_LIBRARY})
# target_link_libraries(hello_main hello)

install(TARGETS hello_main 
    RUNTIME DESTINATION hello/bin)