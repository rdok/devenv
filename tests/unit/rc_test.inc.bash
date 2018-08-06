#!/usr/bin/env bash

oneTimeSetUp() {
    dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

    . "$dir/../../src/rc.inc.bash"
}

test_it_generates_the_rc_path() {
    previousHome=$HOME
    HOME="/path"
    expected="$HOME/.bashrc"
    actual=$(rcPath)

    printf -v message "Expected: %s Actual: %s" "$expected" "$actual"

    assertEquals "$message" "$expected" "$actual"
    HOME="$previousHome"
}
