## Build Your Own CI/CD Pipeline in AWS

This repository contains instructions and resources (files, source code) for you to build your own CI/CD pipeline in AWS.

### AWS services and other technologies that been used:
Other technologies:
* Packer - A tool to build your own AWS AMIs
  * ansible-local: Packer provisioner
  * shell: Packer provisioner
* Ansible - Install packages on the remote server
* Boto3 - A AWS Python library/framework

AWS serviecs:
* IAM (Identity and Access Management)
  * IAM users creation
  * IAM groups creation
  * IAM roles creation
  * IAM policy creation
* S3 - Artifact storage
* CodeCommit - Code version control
* CodeBuild - Code testing, compile, packaging
* CodeDeploy - Artifacts deployment
* CodePipeline - Create CI/CD pipeline based on CodeCommit, CodeBuild and CodeDeploy

### AWS services and technologies will be used in the future
* CloudWatch - CI/CD pipeline monitoring and notification
* CloudTrail - Account/User and application activity usage tacking
* KMS - Uesr data encryption