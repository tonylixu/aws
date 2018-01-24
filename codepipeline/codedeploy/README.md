## How to Deploy Code to a AWS EC2
1. Prepare a SSH key pair with AWS EC2.
2. Instead of creating your own VPC, autoscaling group, security group, load balancer, ..etc. We will take the short path :). Since this is only a CodePipeline demo, we let AWS handle all of that. So we will let AWS create the full stack for us, then simply use the stack to deploy our own applcation.

### Steps:
Go to AWS CodeDeploy in your AWS console:
1. Choose Sample Deploy
![Deploy step1](images/codedeploy-1.JPG)
2. Choose a deploymen type
![Deploy step2](images/codedeploy-2.JPG)
3. Create a blue/green deployment
![Deploy step3](images/codedeploy-3.JPG)
![Deploy step3-2](images/codedeploy-3-2.JPG)
4. After environment is ready, just let it deploy. You can check the status under "AWS CodeDeploy" -> "Deployments".
5. Once the sample-deployment finish, you should have a application called "MoviesDBProjApp" under "Application" tab.
![Deploy step3-2](images/codedeploy-5.JPG)
6. Click on it, you should see an existing deployment group.
![Deploy step3-2](images/codedeploy-6.JPG)
7. Now Go ahead and create a new deployment, this time use your own artifact and click deploy.
![Deploy step3-2](images/codedeploy-7.JPG)