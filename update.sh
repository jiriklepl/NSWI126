#! /bin/sh
 cd packages
 dpkg-scanpackages . /dev/null | gzip -9c > Packages.gz