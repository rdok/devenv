assertStringNotEmpty() {
    local string="$1"

    local stringIsEmpty=$([[ -z "$string" ]] && echo true || echo false)

    local message=$(printf "Failed asserting the given string is not empty.")

    assertFalse "$message" "$stringIsEmpty"
}

