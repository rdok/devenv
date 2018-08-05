assertFileContainsString() {
    local file="$1"
    local string="$2"

    assertStringNotEmpty "$string"
    assertFileIsValid "$file"

    local fileContainsString=$(cat "$file" | \
        grep -xqFe "$string" && \
        echo true || echo false)

    local message=$(printf "Failed asserting file '%s' contains string '%s'." \
        "$file" "$string")

    assertTrue "$message" "$fileContainsString"
}

assertStringNotEmpty() {
    local string="$1"

    local stringIsEmpty=$([[ -z "$string" ]] && echo true || echo false)

    local message=$(printf "Failed asserting the given string is not empty.")

    assertFalse "$message" "$stringIsEmpty"
}

assertFileIsValid() {
    local file="$1"

    assertStringNotEmpty "$file"

    local isFile=$([[ -f "$file" ]] && echo true || echo false)

    local message=$(printf "Failed asserting file '%s' is valid." "$file")

    assertTrue "$message" "$isFile"
}
