## Development environment
- Bash prompt
- Vim IDE                                                  
- Aliases
- Etc

## Plan
> One script to rule them all. Having to frequently switch between 
environments, it is cumbersome to setup the development environment manually, 
or through gists.                         

So let's delegate this setup to a script. To quickly setup the environment, 
`talking to you vagrant destroyer`.

The setup has two steps. First, cloning the project, and secondly, executing 
the installer script.                                       
                                                                
This will install the bash prompt, customized vim, aliases, etc.

## Installation
> Use https instead of git protocol to bypass the requirement of having shh 
keys.  

`git clone https://github.com/rdok/devenv.git`
`bash installer.php`

## Tests
`bash shunit2 tests/all.bash`
