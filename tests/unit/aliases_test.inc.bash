#!/usr/bin/env bash

oneTimeSetUp() {
    dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

    . "$dir/../../src/aliases.inc.bash"
}

test_it_generates_the_aliases() {

    aliases="$(generateAliases)"

    assertStringNotEmpty "$aliases"
}

test_it_generates_the_aliases_path() {
    previousHome=$HOME
    HOME="/path"
    expected="$HOME/.bash_aliases"
    actual=$(aliasesPath)

    printf -v message "Expected: %s Actual: %s" "$expected" "$actual"

    assertEquals "$message" "$expected" "$actual"
    HOME="$previousHome"
}

test_it_generates_the_aliases_source_command() {
    aliasesPath="$(aliasesPath)"
    expected="source $aliasesPath"
    actual=$(aliasesSrcCmd)
    printf -v message "Expected: %s Actual: %s" "$expected" "$actual"

    assertEquals "$message" "$expected" "$actual"
}
