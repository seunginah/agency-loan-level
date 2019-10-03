#!/bin/bash
for filename in ./freddiemac/; do
	echo $filename
	if [[ -d $filename ]]; then
		echo $filename
		cp $filename* .
		rm $filename
	fi
done


for filename in freddiemac/*.zip; do
	echo $filename
	unzip $filename -d freddiemac/
	mv $filename freddiemac_zips/
done