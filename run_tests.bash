#!/usr/bin/env bash

dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
testsPath="$dir/tests"
resultsLogPath="$testsPath/_output/results.log"
blue="\e[1;34m"
resetColor="\e[0m"

echo '' > "$resultsLogPath"

for testPath in $testsPath/*_test; do
    output="\n"
    output+=$(printf "${blue}%0.s-${resetColor}" {1..80})
    output+="\nTest $testPath\n"
    output+=$(printf "${blue}%0.s-${resetColor}" {1..80})
    echo -e $output
    echo -e $output >> $resultsLogPath
    bash "$testPath" 2>&1 | tee -a "$resultsLogPath"
done
