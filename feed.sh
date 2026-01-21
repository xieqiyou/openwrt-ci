rm -rf package/emortal/luci-app-athena-led
git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led
chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led package/luci-app-athena-led/root/usr/sbin/athena-led
#cp ../0002-upgrade-cmake-min-version.patch package/libs/libwebsockets feeds/packages/libs/libwebsockets/patches/
#cp ../003-chore-bump-minimum-CMake-to-2.8.12.patch feeds/packages/utils/tini/patches/
#cp ../004-chore-allow-CMake-though-to-3.10.patch feeds/packages/utils/tini/patches/
#git clone --depth 1 https://github.com/sbwml/openwrt_pkgs.git package/new/custom
#rm -rf feeds/packages/net/speedtest-cli
#mv package/new/custom/luci-app-netspeedtest  package/new
#mv package/new/custom/speedtest-cli package/new
#rm -rf package/new/custom
git clone https://github.com/EasyTier/luci-app-easytier.git package/EasyTier
cd package/EasyTier
git checkout 839286e
cd ..
cd ..
git clone https://github.com/gdy666/luci-app-lucky.git package/lucky
./scripts/feeds update -i 
./scripts/feeds install -a
