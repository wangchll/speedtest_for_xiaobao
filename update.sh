cp -rf /tmp/speedtest/speedtest.sh /koolshare/scripts/
cp -rf /tmp/speedtest/speedtest /koolshare/bin/
rm -rf /tmp/speedtest* >/dev/null 2>&1

chmod a+x /koolshare/scripts/speedtest.sh
chmod a+x /koolshare/bin/speedtest
