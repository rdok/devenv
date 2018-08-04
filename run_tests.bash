#!/usr/bin/env bash

dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
testsPath="$dir/tests"

suite() {
    scheduleTests
}


function scheduleTests() {
    for testPath in $testsPath/*_test; do
        scheduleTest $testPath
    done
}


function scheduleTest() {
    testPath=$1

    . $testPath

    if grep -q 'oneTimeSetUp' $testPath; then
        oneTimeSetUp
    fi

    testFunctions=$(grep -oP ^test_[A-Za-z_0-9]+ $testPath)

    addTestsToSuite $testFunctions
}


function addTestsToSuite() {

    for testFunction in $testFunctions; do
        if  ! [[ $testFunction =~ ^test_* ]]; then continue; fi

        suite_addTest $testFunction
    done
}
