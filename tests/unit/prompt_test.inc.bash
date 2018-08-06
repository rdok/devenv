#!/usr/bin/env bash

oneTimeSetUp() {
    dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

    . "$dir/../../src/prompt.inc.bash"
}

test_it_generates_the_prompt() {
    ps1="$(generatePs1)"
    message=$(echo "Failed asserting $ps1 matches the regex $regex")
    regex='^PS1\=\".+\"$' # https://regex101.com/r/XaJsDA/1hv
    regexPasses=$([[ "$ps1" =~ $regex ]] && echo true || echo false)

    assertTrue "$message" "$regexPasses"
}

test_it_generates_the_prompt_path() {
    previousHome=$HOME
    HOME="/path"
    expected="$HOME/.bash_prompt"
    actual=$(promptPath)

    printf -v message "Expected: %s Actual: %s" "$expected" "$actual"

    assertEquals "$message" "$expected" "$actual"

    HOME="$previousHome"
}

test_it_generates_the_prompt_source_command() {
    promptPath=$(promptPath)
    expected="source $promptPath"
    actual=$(promptSrcCmd)
    printf -v message "Expected: %s Actual: %s" "$expected" "$actual"

    assertEquals "$message" "$expected" "$actual"
}
