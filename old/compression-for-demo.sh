#!/bin/bash

# 批量解压脚本

cd /root/sutdy/compression

ls *.bar.gz > ls.log
ls *.tgz >> ls.log

for i in $(cat ls.log)
do
	tar -zxf $i > /dev/null
done

rm -rf ls.log
