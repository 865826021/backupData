#!/bin/bash  
#power by baibaobing
#2015-11-15 
#========备份数据及删除函数开始=========================================  
back_db(){  
        dbuser=root
        dbpassword=123456
	dbname=test
        #备份位置  
        backuppath='/data/baksql/'$(date +%Y%m%d)'/'
	if [ ! -d $backuppath ]; then
	  mkdir $backuppath
	fi


        #数据备份  
        mysqldump -u$dbuser -p$dbpassword $dbname > $backuppath$dbname'_'$(date +%Y%m%d_%H_%M_%S).sql  
        #删除3天前的数据  
        #delete_file=$dbname'_'$(date -d "-3 day" "+%Y%m%d")'.sql'  
        #rm $backuppath$delete_file  
}  
back_db
