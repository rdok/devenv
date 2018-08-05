#!/usr/bin/env bash

###############################################################################
#   Bash Prompt
###############################################################################
. ./src/bash_prompt.inc.bash
. ./src/bashrc.inc.bash
. ./src/helpers.inc.bash

bashrcPath=$(bashrcPath)
bashPromptSrcCmd=$(bashPromptSrcCmd)

appendStringToFile "$bashPromptSrcCmd" "$bashrcPath"

