## Development environment
- Bash prompt
- Vim IDE

## Plan
> One script to rule them all. 
Having to frequently switch between environments, it is cumbersome to setup 
the development environment manually, or through gists.

As a solution to this, let's delegate this setup to a script. So whenever
there is a need to quickly setup the environment, `talking to you vagrant 
destroyer`, the setup will have two steps. First, cloning the project, and 
secondly, executing the installer script.

This will install the bash prompt, customized vim, aliases, etc. 

## Installation
`bash installer.php`

## Tests
`bash shunit2 tests/all.bash`
