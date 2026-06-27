#!/bin/bash

makepkg -rsc
sudo mv *.pkg.tar.zst /var/repo/local/
rm -rf pcbox-roms-git*
makepkg --printsrcinfo >.SRCINFO
git commit -am "updated PKGBUILD"
git push
