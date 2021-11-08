cmake_minimum_required(VERSION 3.1)

# the compiler must be set before project
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)

project(hello_prj)

# set(CMAKE_C_FLAGS )
# set(CMAKE_CXX_FLAGS )

# include(module)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} 
    ${PROJECT_SOURCE_DIR}/share/cmake/hello
)

add_subdirectory(lib)
add_subdirectory(src bin)

install(FILES README.md COPYRIGHT
    DESTINATION hello
)

install(DIRECTORY include DESTINATION hello)

install(PROGRAMS run_hello.bash 
    DESTINATION hello/bin
)

install(DIRECTORY doc
    DESTINATION hello
)
