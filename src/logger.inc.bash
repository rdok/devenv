function info() {
    message="$1"

    echo -e "\e[1;39m${message}\e[0m"
}

function notice() {
    message="$1"

    echo -e "\e[0;32m${message}\e[0m"
}
