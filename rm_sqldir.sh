#!/bin/bash  
#power by Tercel Bai
#2015-11-15 
#========删除目录函数=========================================  
delete_db(){  
	#删除前第4天的目录，确保备份sql 保存3天
        delete_dir='/data/baksql/'$(date -d "-3 day" "+%Y%m%d")'/'
	if [ -d $delete_dir ]; then
		rm -rf $delete_dir 
	else
		echo $delete_dir
		echo '没有找到前第四天的目录'
	fi
}  
delete_db
