#!/usr/bin/env bash

###############################################################################
#   Bash Prompt
###############################################################################
. ./src/bash_prompt.inc.bash
. ./src/bashrc.inc.bash
. ./src/file.inc.bash
. ./src/logger.inc.bash

info 'Installing the bash_prompt...'
appendStringToFile "$(generatePs1)" "$(bashPromptPath)"

info 'Instructing your system to use bash_prompt...'
appendStringToFile "$(bashPromptSrcCmd)" "$(bashrcPath)"

notice 'Done'

