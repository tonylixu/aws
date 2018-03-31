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

# Install Docker
sudo yum update -y
sudo yum install -y docker
sudo service docker start
# Add the ec2-user to the docker group so we 
# can execute Docker commands without using sudo
sudo usermod -a -G docker ec2-user
# Install Docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.20.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo service docker start
sudo chkconfig docker on
