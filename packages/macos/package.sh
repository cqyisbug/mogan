#!/bin/bash

mkdir -p build/ && cd build/
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=./Mogan.app/Contents/Resources ..
make -j12 install
mv Mogan.app/Contents/Resources/bin Mogan.app/Contents/Resources/share/Xmacs/
cp /Applications/TeXmacs.app/Contents/Resources/share/TeXmacs/bin/gs Mogan.app/Contents/Resources/share/Xmacs/bin/
mkdir -p Mogan.app/Contents/Resources/share/Xmacs/plugins/eukleides/bin
cp /Applications/Mogan.app/Contents/Resources/share/Xmacs/plugins/eukleides/bin/eukleides Mogan.app/Contents/Resources/share/Xmacs/plugins/eukleides/bin
macdeployqt Mogan.app -verbose=1 -dmg
