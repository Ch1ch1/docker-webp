#!/bin/bash

PARAMS=('-m 6 -q 70 -mt -af -progress -resize 300 0 -low_memory')
DIRECTORY="www/public/img/gallery"
STRING="_thumb"

if [ $# -ne 0 ]; then
	PARAMS=$@;
fi
cd $DIRECTORY

shopt -s nullglob nocaseglob extglob

for FILE in */*@(webp)
do
	if  [[ ! "$FILE" == *"$STRING"* ]]
	 then
		 if [[ -f $FILE ]] && [[ -f "${FILE%.*}"_thumb.webp ]]
	 	 then
	 		echo "Skiping $FILE file..."
	 		continue
		fi
			 cwebp $PARAMS "$FILE" -o "${FILE%.*}"_thumb.webp
	fi
		 continue
done
