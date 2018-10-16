#!/bin/bash

# 判断用户输入的是什么文件

read -p "Please input a filename:" file

if [ -z "$file" ];then
	echo "Error,please input a filename"
	exit 1
elif [ ! -e "$file" ];then
	echo "Your input is not a file"
	exit 2
elif [ -f "$file" ];then
	echo "$file is a regulare file"
elif [ -d "$file" ];then
	echo "$file is a directory"
else
	echo "$file is an other file"
fi
