#!/bin/bash

echo "load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" >> $PREFIX/etc/pulse/default.pa
echo "; exit-idle-time = -1" >> $PREFIX/etc/pulse/daemon.conf

rm soundfix.sh
