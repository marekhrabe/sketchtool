#!/usr/bin/env bash

base=`dirname "$0"`

cp "$base/bin/sketchmigrate" /usr/local/bin/
echo Installed `"$base/bin/sketchmigrate" --version` in "/usr/local/bin"

cp "$base/bin/sketchtool" /usr/local/bin/
mkdir -p /usr/local/share/sketchtool
cp -r "$base/share/sketchtool/resources.bundle" /usr/local/share/sketchtool/
echo Installed `"$base/bin/sketchtool" --version` in "/usr/local/bin"

