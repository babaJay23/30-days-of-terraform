# main.tf

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

output "instance_ip" {
  value = aws_instance.example.public_ip
}


# This Terraform configuration creates an AWS EC2 instance in the us-east-1 region. It uses the aws provider, defines an aws_instance resource, and outputs the public IP address of the created instance.

# Make sure to place this main.tf file in your GitLab repository, along with the .gitlab-ci.yml file from the previous example. This setup will allow you to demonstrate the CI/CD pipeline that automatically validates and deploys the Terraform code whenever changes are pushed to the repository.

# Remember that this example is simple, and in a real-world scenario, you might have more complex infrastructure configurations and additional steps in your CI/CD pipeline. The focus here is to understand the basic concept of integrating Terraform with GitLab's CI/CD for automated testing and deployment.