functionsPath() {
    echo "${HOME}/.bash_functions"
}

functionsSrcCmd() {
    echo "source $(functionsPath)"
}

generateFunctions() {
    local functions+="$(generateFunctionSetTitle)"

    echo "$functions"
}

generateFunctionSetTitle() {
    echo 'set-title(){ ORIG=$PS1; TITLE="\e]2;$@\a"; PS1=${ORIG}${TITLE}; }'
}
