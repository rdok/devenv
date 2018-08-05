bashPromptPath() {
    echo "${HOME}/.bash_prompt"
}

bashPromptSrcCmd() {
    echo "source $(bashPromptPath)"
}

#setPs1() {
#    boldBlue="\[\e[1;34m\]"
#    yellow="\[\e[0;33m\]"
#    green="\[\e[0;32m\]"
#    resetColor="\[\e[0m\]"
#
#    username="\u"
#    hostname="\h"
#    currentDir="\w"
#    git="\$(__git_ps1)"
#    accessSymbol="\$"
#
#    PS1="$boldBlue$username@$hostname:"
#    PS1+="$yellow$currentDir"
#    PS1+="$green$git"
#    PS1+="\n"
#    PS1+="$resetColor$accessSymbol "
#}
