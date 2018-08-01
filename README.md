Web Server Example
This folder contains example Terraform templates that deploy a cluster of web servers (using EC2 and Auto Scaling) and a load balancer (using ELB) in an Amazon Web Services (AWS) account. The load balancer listens on port 80 and returns the text "Hello, World" for the / URL.

For more info, please see Chapter 2, "Getting started with Terraform", of Terraform: Up and Running.

Pre-requisites
You must have Terraform installed on your computer.
You must have an Amazon Web Services (AWS) account.
Please note that this code was written for Terraform 0.8.x.

Quick start
Please note that this example will deploy real resources into your AWS account. We have made every effort to ensure all the resources qualify for the AWS Free Tier, but we are not responsible for any charges you may incur.

Configure your AWS access keys as environment variables:

export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)
Validate the templates:

terraform plan
Deploy the code:

terraform apply
When the apply command completes, it will output the DNS name of the load balancer. To test the load balancer:

curl http://(elb_dns_name):8080/
Clean up when you're done:

terraform destroy
