#!/usr/bin/env bash

cp bin/sketchmigrate /usr/local/bin/
echo Installed `sketchmigrate --version` in "/usr/local/bin"

cp bin/sketchtool /usr/local/bin/
mkdir -p /usr/local/share/sketchtool
cp -r share/sketchtool/resources.bundle /usr/local/share/sketchtool/
echo Installed `sketchtool --version` in "/usr/local/bin"

