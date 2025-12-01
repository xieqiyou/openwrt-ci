rm -rf package/emortal/luci-app-athena-led
git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led
chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led package/luci-app-athena-led/root/usr/sbin/athena-led
cp ../0002-upgrade-cmake-min-version.patch package/libs/libwebsockets /openwrt/feeds/packages/libs/libwebsockets/patches/
git clone --depth 1 https://github.com/sbwml/openwrt_pkgs.git package/new/custom
mv package/new/custom/luci-app-netspeedtest  package/new
mv package/new/custom/speedtest-cli package/new
rm -rf package/new/custom
./scripts/feeds update -i 
./scripts/feeds install -a
