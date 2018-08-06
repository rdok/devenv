assertFileEqualsString() {
    local file="$1"
    local string="$2"

    assertStringNotEmpty "$string"
    assertFileIsValid "$file"

    fileContents=$(cat "$file" )

    message=$(printf \
        "Failed asserting contents of file '%s' match the string '%s'." \
        "$file" \
        "$string")

    assertEquals "$message" "$expected" "$actual"
}

assertFileContainsString() {
    local file="$1"
    local string="$2"

    assertFileIsValid "$file"

    fileContainsString=$(cat "$file" | \
        grep -xqFe "$string" && \
        echo true || echo false)

    message=$(printf "Failed asserting file '%s' contains string '%s'." \
        "$file" "$string")

    assertTrue "$message" "$fileContainsString"
}

assertFileIsValid() {
    local file="$1"

    assertStringNotEmpty "$file"

    isFile=$([[ -f "$file" ]] && echo true || echo false)

    message=$(printf "Failed asserting file '%s' is valid." "$file")

    assertTrue "$message" "$isFile"
}

assertFileNotEmpty() {
    local file="$1"

    local contents=$(cat $file)

    assertStringNotEmpty "$contents"
}

assertFileEmpty() {
    local file="$1"

    local contents=$(cat $file)

    assertStringEmpty "$contents"
}
