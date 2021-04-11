#!/bin/sh

printf "Press enter to continue"; read

cd myhello-1.0.0
debuild -b
cd ..

printf "Press enter to continue"; read

dpkg-scanpackages . /dev/null > Packages
gzip -k -f Packages

printf "Press enter to continue"; read

apt-ftparchive release . > Release

printf "Press enter to continue"; read

rm -fr Release.gpg; gpg -abs -o Release.gpg Release
rm -fr InRelease; gpg --clearsign -o InRelease Release
