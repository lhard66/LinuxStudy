#!/bin/bash

isroot=$(env | grep "USER" | cut -d "=" -f 2)

if [ "$isroot" == root ]
	then
	echo "Current user is root."
fi
