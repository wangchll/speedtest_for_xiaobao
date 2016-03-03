#!/bin/sh
eval `dbus export speedtest`
source /koolshare/scripts/base.sh
version="0.0.1"
#检查是否在运行
speedtest_is_run=$(ps | grep "/koolshare/bin/speedtest" | grep -v grep)

#判断测速是否正在进行，确保只有一个测速进程
if [ ! -z "$speedtest_is_run" ]; then
	exit 0
fi

#定义测速变量(1、正在测速；0、测速完成)
dbus set speedtest_status=1
dbus set speedtest_download=0
dbus set speedtest_upload=0

#定义测速脚本
SPEEDTEST_CLI=`/koolshare/bin/speedtest 1 2 1 2 2>/dev/null`

echo "$SPEEDTEST_CLI" | while
read line
do
	download=$(echo $line | awk -F 'download = ' '{print $2}' | grep -oE "[0-9]{1,5}[\.][0-9]{1,2}")
	upload=$(echo $line | awk -F 'upload = ' '{print $2}' | grep -oE "[0-9]{1,5}[\.][0-9]{1,2}")
	if [[ ! -z $download ]]; then
		#echo "download : "$download
		dbus set speedtest_download=$download
	fi
	if [[ ! -z $upload ]]; then
		#echo "upload : "$upload
		dbus set speedtest_upload=$upload
	fi
done;

#完成厕所
dbus set speedtest_status=0
