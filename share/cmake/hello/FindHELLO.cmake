find_path(HELLO_INCLUDE_DIR hello.h /home/${USER}/Desktop/t1/install/hello/include)
find_library(HELLO_LIBRARY NAMES hello_main PATH /home/${USER}/Desktop/t1/install/hello/lib)

if (HELLO_INCLUDE_DIR and HELLO_LIBRARY)
    set(HELLO_FOUND TRUE)
endif(HELLO_INCLUDE_DIR and HELLO_LIBRARY)