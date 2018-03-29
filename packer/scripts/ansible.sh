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

# Install Ansible repository
sudo apt -y update
sudo apt-get -y upgrade
sudo apt -y install software-properties-common
sudo apt-add-repository ppa:ansible/ansible

# Install Ansible
sudo apt -y update
sudo apt -y install ansible
