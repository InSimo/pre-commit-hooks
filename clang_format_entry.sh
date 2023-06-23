#!/usr/bin/env bash
SCRIPT_DIR=$(dirname "$0")
if type python >/dev/null 2>&1; then
    # windows
    exec python $SCRIPT_DIR/clang_format.py $@
elif type python3 >/dev/null 2>&1; then
    # linux
    exec python3 $SCRIPT_DIR/clang_format.py $@
else
    echo 'No python interpreter found'
    exit 1
fi
