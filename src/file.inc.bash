# Append only if the given file does not already contain the given string.
function appendStringToFile() {
    local string="$1"
    local file="$2"

    local stringExists=$(cat "$bashrcPath" | \
        grep -xqFe "$bashPromptSrcCmd" && \
        echo true || echo false)

    if $stringExists; then
        printf ">>Skipping\n"
        printf "'%s' already exists in '%s'.\n" "$string" "$file"
        return 0
    fi

    printf "Appending '%s' to '%s'.\n" "$string" "$file"
    echo "$string" >> "$file"
    return 0
}
