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
sudo yum update -y
sudo yum install -y docker
sudo service docker start
