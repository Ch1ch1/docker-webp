#!/bin/bash

PARAMS=('-m 6 -q 70 -mt -af -progress')
DIRECTORY=public/img/gallery

if [ $# -ne 0 ]; then
	PARAMS=$@;
fi

cd $DIRECTORY

shopt -s globstar nullglob nocaseglob extglob

for FILE in */*.@(jpg|jpeg|tif|tiff|png); do
    cwebp $PARAMS "$FILE" -o "${FILE%.*}"_thumb.webp;
done
