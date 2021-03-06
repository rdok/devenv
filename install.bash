#!/usr/bin/env bash

scriptDir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. "$scriptDir/src/autoload.inc.bash"

notice "Initializing..."

rcPath="$(rcPath)"
promptPath="$(promptPath)"
aliasesPath="$(aliasesPath)"
functionsPath="$(functionsPath)"


info 'Installing prompt...'
truncateFile $promptPath
appendStringToFile "$(generatePs1)" "$promptPath"
appendStringToFile "$(promptSrcCmd)" "$rcPath"

info 'Installing aliases...'
truncateFile $aliasesPath
appendStringToFile "$(generateAliases)" "$aliasesPath"
appendStringToFile "$(aliasesSrcCmd)" "$rcPath"

info 'Installing functions...'
truncateFile $functionsPath
appendStringToFile "$(generateFunctions)" "$functionsPath"
appendStringToFile "$(functionsSrcCmd)" "$rcPath"

info "Sourcing .bashrc"
source $rcPath

info "Installing vim..."
source $rcPath

notice "Done\n"

