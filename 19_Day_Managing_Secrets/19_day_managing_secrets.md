## Day 19: Managing Secrets and Sensitive Data

In modern application development and infrastructure provisioning, managing secrets and sensitive data securely is crucial. Terraform provides mechanisms to handle secrets in a secure manner, allowing you to keep your sensitive information safe while still being able to incorporate it into your infrastructure code.

### Storing Secrets

Storing secrets directly in your Terraform configuration files is not recommended, as these files may be versioned and potentially exposed. Instead, Terraform provides several options for managing secrets:

1. **Environment Variables**: You can use environment variables to provide sensitive information to your Terraform configuration. These environment variables are accessed using the `env` function.

2. **Vault Systems**: HashiCorp Vault is a popular tool for managing secrets and protecting sensitive data. You can integrate Vault with Terraform to securely access secrets during provisioning.

3. **Secrets Management Systems**: There are various secrets management systems like AWS Secrets Manager, Azure Key Vault, and Google Cloud Secret Manager. These services can be used to store and manage secrets, and Terraform can interact with them to retrieve the necessary information.

### Example: Using Environment Variables

Let's illustrate how to use environment variables to handle secrets securely in your Terraform configuration.

Suppose you have an AWS access key and secret key that you want to use securely in your Terraform code:

1. Set the following environment variables:

```bash
export AWS_ACCESS_KEY_ID="your_access_key"
export AWS_SECRET_ACCESS_KEY="your_secret_key"
```

2. Modify your Terraform configuration (`main.tf`) to use these environment variables:

```hcl
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
```

By using environment variables, you keep your sensitive data separate from your Terraform code, reducing the risk of exposure.

### Challenge

Your challenge for today is to integrate a secrets management system, such as HashiCorp Vault or a cloud-specific secrets manager, into your Terraform configuration. Create a secure mechanism to retrieve database credentials and use them to provision a database instance.

Remember to update your `.gitlab-ci.yml` file to include the necessary steps for securely retrieving secrets and using them in your Terraform deployment pipeline.

Keep in mind that the goal of this challenge is to ensure that your infrastructure can securely access sensitive information while maintaining a high level of security.

That's it for Day 19! Tomorrow, we'll explore different design patterns for Infrastructure as Code.

Happy coding! 🚀

Continue to [Day 20: IaC Design Patterns](../20_Day_Design_Patterns/20_day_design_patterns.md).