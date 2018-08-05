#!/usr/bin/env bash

curDir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

. "$curDir/../test_case.inc.bash"

file="$curDir/../_output/file.tmp"

oneTimeSetUp() {
    . "$curDir/../../src/file.inc.bash"
}

test_it_does_not_append_the_string_to_the_file_when_it_already_exists() {
    local string="string-value"

    echo "$string" > "$file"

    assertFileEqualsString "$file" "$string"

    appendStringToFile "$string" "$file"

    assertFileEqualsString "$file" "$string"
}

test_it_appends_a_string_to_the_file() {
    echo '' > $file

    assertFileContainsString "$file" ""

    appendStringToFile "some-string" "$file"

    assertFileContainsString "$file" "some-string"
}
