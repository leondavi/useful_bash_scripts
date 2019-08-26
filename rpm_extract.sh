#!/bin/bash

FILE=$1

if [ -z "$FILE" ]; then
        echo "empty file was given"
elif [[ $FILE  == *.rpm ]]; then
       rpm2cpio ./$1 | cpio -idmv
        
else
	echo "wrong file ending --> not rpm"
fi

