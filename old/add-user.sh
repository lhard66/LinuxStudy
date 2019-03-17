#!/bin/bash
#批量添加指定数量的用户

read -p "Please input user name:" -t 30 name
read -p "Please input the number of users:" -t 30 num
read -p "Please input the password of users:" -t 30 pass

if [ ! -z "$name" -a ! -z "$num" -a ! -z "$pass" ]
then
	y=$(echo $num | sed 's/[0-9]//g')
	if [ -z "$y" ]
	then
		for((i=1;i<=$num;i=i+1))
		do
			/usr/sbin/useradd $name$i &>/dev/null
			echo $pass | /usr/bin/passwd --stdin $name$i &>/dev/null
			# 上行最优写法如下：
			# /usr/bin/passwd  $name$i $pass
		done
	fi
		
fi
