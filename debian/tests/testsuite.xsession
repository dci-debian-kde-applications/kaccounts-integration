#!/bin/sh
export LANG=C.UTF-8
export LC_ALL=C.UTF-8
export HOMETMP="$(pwd)/debian/tests.home"
[ -e "$HOMETMP" ] || mkdir "$HOMETMP"
trap 'rm -rf '"$HOMETMP" EXIT
export HOME="$HOMETMP"

openbox &
sleep 5
dh_auto_test
