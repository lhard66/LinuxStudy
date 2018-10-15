#!/bin/bash
# 判断是否是目录
read -t 30 -p "Please input a dir:" dir
if [ -d "$dir" ]
	then
		echo "yes,is directory"
	else
		echo "no no no"
fi
