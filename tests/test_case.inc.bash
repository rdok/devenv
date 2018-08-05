assertFileContainsString() {
    file="$1"
    string="$2"

    assertStringNotEmpty $string

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
