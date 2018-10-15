#!/bin/bash
# 统计根分区使用率
rate=$(df -h | grep "/dev/vda1" | awk '{print $5}' | cut -d "%" -f1)

# 方括号与内容之间要有空格
if [ "$rate" -ge 80 ]
	then
		echo 'Warning! /dev/vda1 is full!'
	else
		echo 'very good!'
fi
