# main.tf

# Provider configuration (e.g., AWS)
provider "aws" {
  region = "us-west-1"
}

# Resource: EC2 instance
resource "aws_instance" "example_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

# Output
output "instance_public_ip" {
  value = aws_instance.example_instance.public_ip
}

# Terraform block to manage version
terraform {
  required_version = ">= 0.14"
}


# This example includes a basic Terraform configuration that defines an AWS EC2 instance, specifies its Amazon Machine Image (AMI), instance type, and outputs its public IP address. It also includes a Terraform version constraint to ensure compatibility.

# Remember, this is just a starting point. As you progress through the challenge and explore more advanced topics, your Terraform configurations will become more complex and sophisticated.

# For each subsequent day, you can similarly create example .tf files that align with the topic of the day and gradually build upon your understanding of Terraform concepts. Make sure to adapt the configurations to your preferred cloud provider and use case.