#!/usr/bin/env bash

oneTimeSetUp() {
    dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

    . "$dir/../../src/functions.inc.bash"
}

test_it_generates_the_functions() {

    local functions="$(generateFunctions)"

    assertStringNotEmpty "$functions"
}

test_it_generates_the_functions_path() {
    previousHome=$HOME
    HOME="/path"
    expected="$HOME/.bash_functions"
    actual=$(functionsPath)

    printf -v message "Expected: %s Actual: %s" "$expected" "$actual"

    assertEquals "$message" "$expected" "$actual"
    HOME="$previousHome"
}

test_it_generates_the_functions_source_command() {
    functionsPath="$(functionsPath)"
    expected="source $functionsPath"
    actual=$(functionsSrcCmd)
    printf -v message "Expected: %s Actual: %s" "$expected" "$actual"

    assertEquals "$message" "$expected" "$actual"
}
