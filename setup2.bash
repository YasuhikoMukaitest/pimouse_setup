#!/bin/bash -xve

exec 2> /tmp/setup.log

cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

sleep 1

#デバイスファイルの権限を全員に変更
chmod 666 /dev/rt*
#安全のため、モータの電源を切っておく
echo 0 > /dev/rtmotoren0
