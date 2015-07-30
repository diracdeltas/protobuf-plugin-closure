# protobuf-plugin-closure

A fork of https://github.com/rethinkdb/protobuf-plugin-closure, originally by
Andy Hochhaus. See [README.old](README.old) for the old README and license.

## Building

    $ brew install protobuf
    $ make all

You should edit `SPREFIX` accordingly in Makefile and run.sh if your protoc
install is somewhere other than /usr/local/bin.

## Running

To compile .proto files for use with the [Closure proto2
library](https://github.com/google/closure-library/tree/master/closure/goog/proto2), run:

    $ ./run.sh {filename}

where `filename` is the name of the .proto file.

