#!/usr/bin/env bash

curDir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

. "$curDir/../test_case.inc.bash"

file="$curDir/../_output/file.tmp"

oneTimeSetUp() {
    . "$curDir/../../src/file.inc.bash"
}

#test_it_does_not_append_a_string_to_the_file_if_it_already_exists() {
    # given i have file with with a string
    # when i call the function to append the string
    # then the file contents should  be unchanged
#}

test_it_appends_a_string_to_the_file() {
    # given i have file without no contents
    echo '' > $file

    # when i call the function to append the string
    appendStringToFile "some-string" $file

    # then the file should contain this new string
    assertFileContainsString $file "some-string"
}
