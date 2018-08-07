## Development environment
[![Build Status](https://travis-ci.org/rdok/devenv.svg?branch=master)](https://travis-ci.org/rdok/devenv)

- Bash prompt, Vim IDE, Aliases, Etc

## Installation
> Use https instead of git protocol to bypass the requirement of having shh 
keys.  

`rm -rf /tmp/devenv && git clone https://github.com/rdok/devenv.git /tmp/devenv && cd $_ && bash install.bash && cd ~ && rm -rf /tmp/devenv`

## Plan
> One script to rule them all. Having to frequently switch between 
environments, it is cumbersome to setup the development environment manually, 
or through gists.                         

So let's delegate this setup to a script. To quickly setup the environment, 
`talking to you vagrant destroyer`.

The setup has two steps. First, cloning the project, and secondly, executing 
the installer script.                                       
                                                                
This will install the bash prompt, customized vim, aliases, etc.



## Tests
`bash shunit2 tests/all.bash`
