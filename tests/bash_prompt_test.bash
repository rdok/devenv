#!/usr/bin/env bash

oneTimeSetUp() {
    dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

    . "$dir/../src/bash_prompt.inc"
}

test_it_generates_the_location_of_bash_prompt() {
    previousHome=$HOME
    HOME="/path"
    expected="$HOME/.bash_prompt"
    actual=$(bashPromptLocation)

    printf -v message "Expected: %s Actual: %s" "$expected" "$actual"

    assertEquals "$message" "$expected" "$actual"
    HOME="$previousHome"
}