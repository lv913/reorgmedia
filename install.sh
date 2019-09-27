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
VERSION=$(reorgmedia -V 2>>errors | head -n 1)

echo "$VERSION has successfully installed."
exit 0
