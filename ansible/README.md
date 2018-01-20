## How to Install Ansible on AWS Instance

### Ubuntu
1. Add Ansible PPA:
```bash
# apt-add-repository ppa:ansible/ansible
 Ansible is a radically simple IT automation platform that makes your applications and systems easier to deploy. Avoid writing scripts or custom code to deploy and update your applications— automate in a language that approaches plain English, using SSH, with no agents to install on remote systems.

http://ansible.com/
 More info: https://launchpad.net/~ansible/+archive/ubuntu/ansible
Press [ENTER] to continue or ctrl-c to cancel adding it

gpg: keyring `/tmp/tmpcptsqtyj/secring.gpg' created
gpg: keyring `/tmp/tmpcptsqtyj/pubring.gpg' created
gpg: requesting key 7BB9C367 from hkp server keyserver.ubuntu.com
gpg: /tmp/tmpcptsqtyj/trustdb.gpg: trustdb created
gpg: key 7BB9C367: public key "Launchpad PPA for Ansible, Inc." imported
gpg: Total number processed: 1
gpg:               imported: 1  (RSA: 1)
OK

```
2. Install Ansible
```bash
# apt-get update
# apt-get install ansible
```