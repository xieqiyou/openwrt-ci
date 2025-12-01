rm -rf package/emortal/luci-app-athena-led
git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led
chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led package/luci-app-athena-led/root/usr/sbin/athena-led
rm -rf package/libs/libwebsockets
git clone https://github.com/immortalwrt/packages.git package/new/custom
mv package/libs/libwebsockets package/libs/libwebsockets
rm -rf package/new/custom
git clone --depth 1 https://github.com/sbwml/openwrt_pkgs.git package/new/custom
mv package/new/custom/luci-app-netspeedtest  package/new
mv package/new/custom/speedtest-cli package/new
rm -rf package/new/custom
./scripts/feeds update -i 
./scripts/feeds install -a
