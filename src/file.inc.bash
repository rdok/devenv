# Append only if the given file does not already contain the given string.
function appendStringToFile() {
    local string="$1"
    local file="$2"

    local stringExists=$(cat "$file" | \
        grep -xqFe "$string" && \
        echo true || echo false)

    if $stringExists; then
        return
    fi

    echo "$string" >> "$file"
}
