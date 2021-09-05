#!/bin/bash
DIST=hirsute
WORKDIR=megasync
rm -Rf $WORKDIR
rm megasync.yml
rm pkg2appimage-1807-x86_64.AppImage
rm megasync_4.5.3-2.1_amd64.deb
cp megasync.yml.template megasync.yml
sed -i "s/DIST/$DIST/g" "megasync.yml"
wget https://mega.nz/linux/MEGAsync/xUbuntu_21.04/amd64/megasync_4.5.3-2.1_amd64.deb
wget https://github.com/AppImage/pkg2appimage/releases/download/continuous/pkg2appimage-1807-x86_64.AppImage
chmod 700 pkg2appimage-1807-x86_64.AppImage
./pkg2appimage-1807-x86_64.AppImage megasync.yml
