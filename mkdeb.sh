#!/bin/bash

path=`pwd`
rm -f holidaysh.deb
rm -rf /tmp/holidaysh
mkdir /tmp/holidaysh
cp -r * /tmp/holidaysh/
cd /tmp/holidaysh
rm mkdeb.sh
find . -name .svn -print0 | xargs -0 rm -rf
cd /tmp
fakeroot dpkg-deb --build holidaysh
cp holidaysh.deb $path/
