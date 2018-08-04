#!/usr/bin/env bash

oneTimeSetUp() {
    dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

    . "$dir/../src/bashrc.inc"
}

test_it_generates_the_location_of_bashrc() {
    previousHome=$HOME
    HOME="/path"
    expected="$HOME/.bashrc"
    actual=$(bashrcLocation)

    printf -v message "Expected: %s Actual: %s" "$expected" "$actual"

    assertEquals "$message" "$expected" "$actual"
    HOME="$previousHome"
}