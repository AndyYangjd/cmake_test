#!/bin/bash

# get the directory name of current file
if [ -L $0 ]
then
    BASE_DIR=`dirname $(readlink $0)`
else
    BASE_DIR=`dirname $0`
fi
basepath=$(cd $BASE_DIR; pwd)
echo "basepath"

chmod +x $basepath/hello_main
$basepath/hello_main