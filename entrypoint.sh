#!/bin/bash -x
# Remove ipv6 local loop until ipv6 is supported
cat /etc/hosts | sed '/::1/d' | tee /etc/hosts > /dev/null

git clone https://github.com/jojo13572001/smartlight.git 
cd smartlight
exec http-server -p 80
