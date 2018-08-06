currentDirectory=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. "$currentDirectory/logger.inc.bash"

throw() {
    message="$1"

    location=$(caller)

    error=$(printf "Exception: %s:\n%s" "$location" "$message")

    error "$error"

    exit
}
