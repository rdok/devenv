dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
testsPath="$dir/tests"

for testPath in $testsPath/*_test; do
    printf "Executing %s\n" $testPath
    bash "$testFile" 2>&1 | tee "$testsPath/_output/results.log"
done
