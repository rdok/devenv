resetColor="\e[0m"

function info() {
    message="$1"
    defaultColor="\e[1;39m"

    echo -e "${defaultColor}${message}${resetColor}"
}

function notice() {
    message="$1"
    greenColor="\e[0;32m"

    echo -e "\e[0;32m${message}${resetColor}"
}
