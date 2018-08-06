promptPath() {
    echo "${HOME}/.bash_prompt"
}

promptSrcCmd() {
    echo "source $(promptPath)"
}

generatePs1() {
    boldBlue="\[\e[1;34m\]"
    yellow="\[\e[0;33m\]"
    green="\[\e[0;32m\]"
    resetColor="\[\e[0m\]"

    username="\u"
    hostname="\h"
    currentDir="\w"
    git="\$(__git_ps1)"
    accessSymbol="\$"

    ps1="$boldBlue$username@$hostname:"
    ps1+="$yellow$currentDir"
    ps1+="$green$git"
    ps1+="\\n"
    ps1+="$resetColor$accessSymbol "
    ps1="PS1=\"$ps1\""

    echo "$ps1"
}
