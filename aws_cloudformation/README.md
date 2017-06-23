#Launching Dev Server in AWS Using CloudFormation Template:

#Prerequisites:

1.IAM user launching the Cloud Formation template must have full permission to EC2, S3 and CloudFormation services.

2.The Dev host machine should be any of the latest versions of Ubuntu, Amazon Linux, CentOS or RedHat

3.Valid Key pair should be present

4.Security Group with inbound ports 22, 80, 8080, 3306 opened to your office ip must be present

5.VPC with public subnet (Auto assign Public ip must be set to YES) should be present if not an Elastic ip should be created and attached to the Dev EC2 instance after launch.

#Launching CloudFormation Template:

1.Login AWS management console and navigate to CloudFormation service

2.Click on Create New Stack  button

3.Click on choose file option and upload the orchestration.json file and click next

4.In Specify Details page fill in the required parameters and click next

5.In the options page fill in the Tags and click next

6.Review your data and click on Create button.

7.Dev stack (EC2) will be launched and we should be able to access the tomcat and apache from the browser using URL http://public_ip:8080 ,   http://public_ip

8.Login to tomcat using credential username: tomcat ,  password: tomcat123

9.Deploy the sample.war

10.Now we should be able to access the sample page in browser by typing http://public_ip/sample

11.We should also be able to connect MySQL using workbench with credentials
Host: public_ip, Username: root, password: mysqlPasswod

