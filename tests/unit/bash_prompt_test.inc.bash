#!/usr/bin/env bash

oneTimeSetUp() {
    dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

    . "$dir/../../src/bash_prompt.inc.bash"
}

test_it_generates_the_command_to_source_the_bash_prompt() {
    bashPromptPath=$(bashPromptPath)
    expected="source $bashPromptPath"
    actual=$(bashPromptSrcCmd)
    printf -v message "Expected: %s Actual: %s" "$expected" "$actual"

    assertEquals "$message" "$expected" "$actual"
}

test_it_generates_the_path_of_bash_prompt() {
    previousHome=$HOME
    HOME="/path"
    expected="$HOME/.bash_prompt"
    actual=$(bashPromptPath)

    printf -v message "Expected: %s Actual: %s" "$expected" "$actual"

    assertEquals "$message" "$expected" "$actual"
    HOME="$previousHome"
}
