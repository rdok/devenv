assertFileContainsString() {
    file="$1"
    string="$2"

    assertStringNotEmpty $string
    assertFileIsValid $file

    fileContainsString=$(cat "$file" | \ 
        grep -xqFe "$string" && \
        echo true || echo false)
    echo '>>>>>>>>>'

    $message=$(printf "Failed asserting file '%s' contains string '%s'." \ 
        $file $string)

    assertTrue $message $fileContainsString
}

assertStringNotEmpty() {
    string="$1"

    stringIsEmpty=$([[ -z "$string" ]] && echo true || echo false)

    message=$(printf "Failed asserting the given string is not empty.")

    assertFalse "$message" "$stringIsEmpty"
}

assertFileIsValid() {
    file="$1"

    assertStringNotEmpty "$file"

    isFile=$([[ -f "$file" ]] && echo true || echo false)

    message=$(printf "Failed asserting file '%s' is valid." "$file")

    assertTrue "$message" "$isFile"
}
