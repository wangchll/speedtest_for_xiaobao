#!/bin/sh
eval `dbus export speedtest`
#source /koolshare/scripts/base.sh
version="0.0.1"

#定义测速脚本
SPEEDTEST_CLI="/jffs/speedtest 1 2 1 2"

`$SPEEDTEST_CLI | while read line; \
	do \
	download=$(echo $line | awk -F 'download = ' '{print $2}' | grep -oE '[0-9]{1,5}[\.][0-9]{1,2}’); \
	upload=$(echo $line | awk -F 'upload = ' '{print $2}' | grep -oE '[0-9]{1,5}[\.][0-9]{1,2}’); \

done`
