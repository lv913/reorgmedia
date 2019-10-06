#!/bin/bash

set -e

cp reorgmedia /usr/bin/reorgmedia.new
chmod 755 /usr/bin/reorgmedia.new
chown root:root /usr/bin/reorgmedia.new
mv /usr/bin/reorgmedia.new /usr/bin/reorgmedia

cp showmedia /usr/bin/showmedia.new
chmod 755 /usr/bin/showmedia.new
chown root:root /usr/bin/showmedia.new
mv /usr/bin/showmedia.new /usr/bin/showmedia

#update version variable post install
VERSION_1=$(reorgmedia -V 2>>errors | head -n 1)
VERSION_2=$(showmedia -V 2>>errors | head -n 1)

echo "$VERSION_1 has successfully installed."
echo "$VERSION_2 has successfully installed."
exit 0
