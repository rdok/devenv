#!/usr/bin/env bash

scriptDir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

. "$scriptDir/src/bash_prompt.inc.bash"
. "$scriptDir/src/bashrc.inc.bash"
. "$scriptDir/src/file.inc.bash"
. "$scriptDir/src/logger.inc.bash"

info 'Installing the bash_prompt...'
appendStringToFile "$(generatePs1)" "$(bashPromptPath)"

info 'Instructing your system to use bash_prompt...'
appendStringToFile "$(bashPromptSrcCmd)" "$(bashrcPath)"

notice 'Done'

