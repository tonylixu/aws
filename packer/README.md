## Why Packer?
Pre-baked machine image have a lot of advantages, but most have been unable to benefit from them because images have been too tedious to create and manage. Packer is easy to use and automates the creation of any type of machine image. It embraces modern configuration management by encouring you to use a framework such as Chef or Puppet to install and configure the sotfware within your Packer-made images. 

### Install Packer on AWS instances:
1. Download Packer binary from "https://www.packer.io/downloads.html" to your server
2. Uncompress the packer binary file
```bash
# unzip packer_1.1.3_linux_amd64.zip
Archive:  packer_1.1.3_linux_amd64.zip
  inflating: packer
``` 
3. Move the packer binary to "/usr/local/bin":
```bash
# mv packer /usr/local/bin/
# echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin
# which packer
/usr/local/bin/packer
```