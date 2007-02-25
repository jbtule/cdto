#!/bin/sh

if [ ! -e Versioning/set_version ]; then
    gcc -o Versioning/set_version -w -framework Foundation Versioning/set_version.m
fi

REV="`/usr/local/subversion/bin/svn info | grep Revision | cut -f 2 -d ':' | cut -f 2 -d ' '`"
Versioning/set_version Info.plist "$TARGET_BUILD_DIR/$FULL_PRODUCT_NAME/Contents/Info.plist" CFBundleVersion $REV
