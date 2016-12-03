#!/bin/bash

case $1 in
	-h | "" )
		echo "Usage: bulktar.sh <option>"
		echo "	-c: compress subdirectories into separate .tgz files"
		echo "	-x: extract .tgz files"
		exit
		;;
	 -c )
		for i in */ ; do
			echo "Compressing '$i' ..."
			tar -pzcvf "${i%/}.tar.gz" "$i"
		done
		;;
	 -x )
		for i in *.tar.gz ; do
			echo "Extracting '$i' ..."
			tar -zxvf "$i"
		done
		;;
esac
