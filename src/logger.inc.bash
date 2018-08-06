resetColor="\e[0m"

info() {
    message="$1"
    defaultColor="\e[1;39m"

    echo -e "${defaultColor}${message}${resetColor}"
}

notice() {
    message="$1"
    greenColor="\e[0;32m"

    echo -e "$greenColor${message}${resetColor}"
}

error() {
    message="$1"
    redColor="\e[1;31m"

    echo -e "$redColor${message}${resetColor}"
}
