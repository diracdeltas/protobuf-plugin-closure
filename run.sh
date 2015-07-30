#!/usr/bin/env bash

TARGET=$1
PROTOC=protoc
SPREFIX=/usr/local
INCLUDE=$SPREFIX/include/

if [ -f "$1" ]; then
    mkdir -p out
    $PROTOC --plugin=protoc-gen-js \
        -I . \
        -I $INCLUDE \
        --js_out=out/ \
        $TARGET

    echo "Created js protos in out/js/"
    exit 0
fi

echo "USAGE: $0 {filename}"
exit 1
