#!/usr/bin/env bash

scriptDir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. "$scriptDir/src/logger.inc.bash"


notice "Initializing..."
. "$scriptDir/src/bash_prompt.inc.bash"
. "$scriptDir/src/bashrc.inc.bash"
. "$scriptDir/src/file.inc.bash"


info 'Installing the bash_prompt...'
appendStringToFile "$(generatePs1)" "$(bashPromptPath)"


info 'Instructing the os to use bash_prompt...'
appendStringToFile "$(bashPromptSrcCmd)" "$(bashrcPath)"


notice "Done\n"

