#!/bin/bash

#
# Download dictionaries from libreoffice github mirror
# Convert to utf-8
#

REPO_URL=https://github.com/LibreOffice/dictionaries.git
TAG=libreoffice-5.2.0.1

TEMP_CLONE_PATH=dictionaries_clone_tmp
TEMP_PATH=dictionaries_tmp
OUT=vendor/assets/dictionaries

function convert {
    for f in *.dic *.aff
    do
        ENCODING=$(uchardet $f)

        if [ "$ENCODING" != "UTF-8" ]; then
            echo "CONVERTING: $f FROM $ENCODING TO UTF-8"
            iconv -f $ENCODING -t UTF-8 $f >> ../$OUT/$f
        else
            cp $f ../$OUT
        fi
    done
}

function clean {
    rm -rf $TEMP_CLONE_PATH
    rm -rf $TEMP_PATH
}

rm -rf vendor/assets/dictionaries
mkdir -p vendor/assets/dictionaries
mkdir $TEMP_PATH

echo "Cloning dictionaries"

git clone $REPO_URL $TEMP_CLONE_PATH

cd $TEMP_CLONE_PATH
git checkout tags/$TAG
find . -name "*.aff" -exec cp {} ../$TEMP_PATH \;
find . -name "*.dic" -exec cp {} ../$TEMP_PATH \;
cd ../$TEMP_PATH

if ! which uchardet >/dev/null 2>&1; then
    echo "Please install uchardet"
else
    echo "Converting dictionaries to UTF-8"
    convert
    cd ..
    clean
fi

