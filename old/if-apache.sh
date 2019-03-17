#!/bin/bash

#截取python进程，并把结果赋予变量test。若检查apache，则grep httpd
test=$(ps aux | grep python | grep -v grep)

if [ -n "$test" ]
	then
		echo "$(date) python(httpd) is ok!" >> /tmp/autostart-acc.log
	else
		# /etc/rc.d/init.d/httpd start &>/dev/null
		echo "$(date) restart httpd!" >> /tmp/autostart-err.log
fi
