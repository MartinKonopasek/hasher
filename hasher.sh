#!/bin/bash

for file in "$@"; do
    echo "---------------------------------------------------------------------------------"
    echo "File: $file"
    
    if [ ! -f $file ]; then
        echo "Not found"
    else
        echo -e "MD5\t-> $(md5sum $file | cut -d ' ' -f 1)"
        echo -e "SHA-1\t-> $(sha1sum $file | cut -d ' ' -f 1)"
        echo -e "SHA-256\t-> $(sha256sum $file | cut -d ' ' -f 1)"  
    fi
done