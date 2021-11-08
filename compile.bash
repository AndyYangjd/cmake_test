#!/bin/bash

install_prefix="/home/${USER}/Desktop/t1/install";

if [ -d "${install_prefix}" ];then
    rm -rf ${install_prefix};
fi

if [ ! -d "/build" ];then
    mkdir build;
else
    rm -rf build;
fi

cd build;
cmake -DCMAKE_INSTALL_PREFIX=${install_prefix} ..;
make -j8;
make install;

bash ${install_prefix}/hello/bin/run_hello.bash;