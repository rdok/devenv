#!/usr/bin/env bash

scriptDir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. "$scriptDir/src/logger.inc.bash"


notice "Initializing..."
. "$scriptDir/src/prompt.inc.bash"
. "$scriptDir/src/rc.inc.bash"
. "$scriptDir/src/file.inc.bash"
. "$scriptDir/src/aliases.inc.bash"
rcPath="$(rcPath)"
promptPath="$(promptPath)"
aliasesPath="$(aliasesPath)"


info 'Installing bash_prompt...'
truncateFile $promptPath
appendStringToFile "$(generatePs1)" "$promptPath"
appendStringToFile "$(promptSrcCmd)" "$(rcPath)"

info 'Installing aliases...'
truncateFile $aliasesPath
appendStringToFile "$(generateAliases)" $aliasesPath
appendStringToFile "$(aliasesSrcCmd)" "$(rcPath)"

info "Sourcing .bashrc"
source $rcPath

notice "Done\n"

