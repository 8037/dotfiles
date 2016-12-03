#!/bin/bash

read -r -p "You sure? $1 [y/N] " response

if [[ $response =~ ^([yY])$ ]]
then
	find $1 \
	\( -type f -exec chmod 644 {} \; \) , \
	\( -type d -exec chmod 755 {} \; \)
else
	echo "Aborted..."
	exit 0
fi
