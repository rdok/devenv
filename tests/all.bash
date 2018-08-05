#!/usr/bin/env bash

suite() {
    scheduleTests
}

function scheduleTests() {
    testsPath=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

    for testPath in $testsPath/*_test.*; do
        scheduleTest $testPath
    done
}


function scheduleTest() {
    testPath=$1

    . $testPath

    if grep -q 'oneTimeSetUp' $testPath; then
        oneTimeSetUp
    fi

    testFunctions=($(grep -oE ^test_[A-Za-z_0-9]+ "$testPath"))

    addTestsToSuite "${testFunctions[@]}"
}


function addTestsToSuite() {
    testFunctions=("$@")

    for testFunction in "${testFunctions[@]}"; do
        if  ! [[ $testFunction =~ ^test_* ]]; then continue; fi

        suite_addTest $testFunction
    done
}
