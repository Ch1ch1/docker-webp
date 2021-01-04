#!/bin/bash

PARAMS=('-m 6 -q 70 -mt -af -progress -resize 300 0 -low_memory')
DIRECTORY="public/img/gallery"
STRING="_thumb"

if [ $# -ne 0 ]; then
	PARAMS=$@;
fi
cd $DIRECTORY

shopt -s nullglob nocaseglob extglob

for FILE in */*@(webp)
do
			 cwebp $PARAMS "$FILE" -o "${FILE%.*}"_thumb.webp
done
