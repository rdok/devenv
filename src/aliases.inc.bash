aliasesPath() {
    echo "${HOME}/.bash_aliases"
}

aliasesSrcCmd() {
    echo "source $(aliasesPath)"
}

generateAliases() {
    aliases="alias gs=\"git status\"\n"
    aliases+="alias gal=\"git add --all\"\n"
    aliases+="gcm=\"git commit -m\"\n"
    aliases+="pt=\"./vendor/bin/phpunit\""
    aliases+="pa=\"php artisan\""

    echo -e $aliases
}
