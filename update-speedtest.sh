#!/bin/sh
eval `dbus export speedtest`
source /koolshare/scripts/base.sh
version="0.0.1"
#定义更新相关地址
UPDATE_VERSION_URL="https://raw.githubusercontent.com/wangchll/speedtest_for_xiaobao/master/version"
UPDATE_TAR_URL="https://raw.githubusercontent.com/wangchll/speedtest_for_xiaobao/master/speedtest.tar.gz"

#检查版本
check_version(){
	speedtest_version_web1=$(curl -s $UPDATE_VERSION_URL | sed -n 1p)

	if [ ! -z $speedtest_version_web1 ];then
		dbus set speedtest_version_web=$speedtest_version_web1
	fi
}

##更新插件

if [ "$speedtest_update_check" == "1" ];then

	# speedtest_install_status=	#
	# speedtest_install_status=0	#
	# speedtest_install_status=1	#正在下载更新......
	# speedtest_install_status=2	#正在安装更新...
	# speedtest_install_status=3	#安装更新成功，5秒后刷新本页！
	# speedtest_install_status=4	#下载文件校验不一致！
	# speedtest_install_status=5	#然而并没有更新！
	# speedtest_install_status=6	#正在检查是否有更新~
	# speedtest_install_status=7	#检测更新错误！

	dbus set speedtest_install_status="6"
	speedtest_version_web1=`curl -s $UPDATE_VERSION_URL | sed -n 1p`
	if [ ! -z $speedtest_version_web1 ];then
		dbus set speedtest_version_web=$speedtest_version_web1
		cmp=`versioncmp $speedtest_version_web1 $speedtest_version`
		if [ "$cmp" = "-1" ];then
			dbus set speedtest_install_status="1"
			cd /tmp
			md5_web1=`curl -s $UPDATE_VERSION_URL | sed -n 2p`
			wget --no-check-certificate --tries=1 --timeout=15 $UPDATE_TAR_URL
			md5sum_gz=`md5sum /tmp/speedtest.tar.gz | sed 's/ /\n/g'| sed -n 1p`
			if [ "$md5sum_gz" != "$md5_web1" ]; then
				dbus set speedtest_install_status="4"
				rm -rf /tmp/speedtest* >/dev/null 2>&1
				sleep 5
				dbus set speedtest_install_status="0"
			else
				stop_speedtest
				tar -zxf speedtest.tar.gz
				dbus set speedtest_enable="0"
				dbus set speedtest_install_status="2"
				chmod a+x /tmp/speedtest/update.sh
				sh /tmp/speedtest/update.sh
				sleep 2
				dbus set speedtest_install_status="3"
				dbus set speedtest_version=$speedtest_version_web1
				sleep 2
				dbus set speedtest_install_status="0"
			fi
		else
			dbus set speedtest_install_status="5"
			sleep 2
			dbus set speedtest_install_status="0"
		fi
	else
		dbus set speedtest_install_status="7"
		sleep 5
		dbus set speedtest_install_status="0"
	fi
	dbus set speedtest_update_check="0"
	exit 0
fi
