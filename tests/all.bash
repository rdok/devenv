#!/usr/bin/env bash

testsPath=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

suite() {
    scheduleTests
}


function scheduleTests() {
    for testPath in $testsPath/*_test.bash; do
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
    testFunctions=$1

    for testFunction in $testFunctions; do
        if  ! [[ $testFunction =~ ^test_* ]]; then continue; fi

        suite_addTest $testFunction
    done
}
