## Setup Steps for SSH Connections to AWS CodeCommit on Linux Server

### Prerequisite
* IAM user account has been setup with "AWSCodeCommitFullAccess" permissions
* Git is installed locally
* SSH public and private key are generated

### Configuration
* Sign in to the AWS Management Console and open the IAM console at https://console.aws.amazon.com/iam/
* In the IAM console, in the navigation pane, choose Users, and from the list of users, choose your IAM user
* On the user details page, choose the Security Credentials tab, and then choose Upload SSH public key
* Paste the contents of your SSH public key into the field, and then choose Upload SSH public key
* Copy or save the information in SSH Key ID (for example, APKAEIBAERJR2EXAMPLE)
* On your local machine, update the `~/.ssh/config` file, add:
```bash
Host git-codecommit.*.amazonaws.com
  User APKAEIBAERJR2EXAMPLE
  IdentityFile ~/.ssh/codecommit_rsa
```
* Change the permission of the config file
```bash
# chmod 600 config
```
* Run the following command to test your SSH configuration to test:
```bash
# ssh git-codecommit.us-east-2.amazonaws.com
```