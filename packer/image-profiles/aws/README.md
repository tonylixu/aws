### amazon-ebs Packer Builder
The amazon-ebs Packer builder is able to create Amazon AMIs backed by EBS volumes for use in EC2. 

This builder builds an AMI by launching an EC2 instance from a source AMI, provisioning that running machine, and then creating an AMI from that machine. This is all done in your own AWS account. The builder will create temporary keypairs, security group rules, etc. that provide it temporary access to the instance while the image is being created. This simplifies configuration quite a bit.

The builder does not manage AMIs. Once it creates an AMI and stores it in your account, it is up to you to use, delete, etc. the AMI.