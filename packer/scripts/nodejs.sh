#!/bin/bash -eux
## -e: Turn cmd1 && cmd2 && cmd3 to
##     cmd1
##     cmd2
##     cmd3
## -u: Prints a message to stderr with it tries to expand
##     a varibale that is not set
## -x: The shell prints each command in a script to stderr
##     before running it. For example:
##     + echo hey
##     hey

# Install nodejs
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 6.10
nvm install --lts
node -e "console.log('Running Node.js ' + process.version)"
