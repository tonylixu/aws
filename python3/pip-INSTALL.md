## Install pip on AWS Instance

1. Download the installation script from pypa.io:
```bash
curl -O https://bootstrap.pypa.io/get-pip.py
```
2. Run the script with Python:
```bash
# Invoking version Python 3 directly by using the 
# python3 command instead of python ensures that 
# pip is installed in the proper location, even if # an older system version of Python is present on # your system.
$ python3 get-pip.py --user
```
3. Verify the version:
```bash
$ pip --version
pip 9.0.1 from /home/ubuntu/.local/lib/python3.5/site-packages (python 3.5)
```

4. You might need to add `~/.local/bin` into your envrionment `PATH` variable:
```bash
$ vim ~/.profile
Update
PATH="$HOME/bin:$PATH"
to
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
```