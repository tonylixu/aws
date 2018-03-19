## Install Boto3 on AWS Instance

### Install Boto3 via pip (Python 2.x)
```bash
$ sudo pip install boto3 --user
```

### Install Boto3 via pip (Python 3.x)
```bash
$ python3 -m pip install boto3
```

### Configure AWS
```bash
$ aws configure
```

### Note
For Mac OSX, the `aws` path is at `/Users/txu/Library/Python/3.6/bin`, so you need to modify your *shrc file:
* Bash – .bash_profile, .profile, or .bash_login
* Zsh – .zshrc
* Tcsh – .tcshrc, .cshrc or .login
and add:
```bash
export PATH=/Users/txu/Library/Python/3.6/bin:$PATH
```

Then do a `source *shrc`