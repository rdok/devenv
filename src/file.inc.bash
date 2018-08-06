currentDirectory=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. "$currentDirectory/exception.inc.bash"

# Append only if the given file does not already contain the given string.
appendStringToFile() {
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

truncateFile() {
    local file="$1"

    echo '' > $file
}

validateFilePath() {
    local file="$1"

    if [ ! -f $file ]; then

        message="File path is invalid: $file"
        
        throw "$message"
    fi
}
