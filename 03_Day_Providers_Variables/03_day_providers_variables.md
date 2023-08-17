# 30 Days of Terraform: Day 3

## Providers and Variables

Welcome to Day 3 of the **30 Days of Terraform** challenge! In today's lesson, we will explore two important concepts in Terraform: **Providers** and **Variables**.

### Providers

In Terraform, a provider is responsible for managing resources. A provider is a plugin that Terraform uses to manage infrastructure resources. Providers are responsible for interacting with APIs and managing resources in various infrastructure platforms, such as AWS, Azure, Google Cloud, and more.

Terraform uses a declarative approach to describe the desired state of your infrastructure. You declare the resources you want, and Terraform's providers handle the creation, modification, and deletion of those resources.

Here's an example of how to specify a provider in your Terraform configuration:

```hcl
provider "aws" {
  region = "us-west-2"
}
```

In this example, we are using the "aws" provider to manage resources in the US West (Oregon) region. Each provider has its own configuration options, so make sure to refer to the provider's documentation for details.

### Variables

Variables in Terraform allow you to parameterize your configurations and make them more dynamic and reusable. With variables, you can define values that can be used throughout your Terraform code. This is useful for defining inputs, configuration options, or even resource names.

To define a variable, you use the `variable` block in your Terraform configuration:

```hcl
variable "instance_count" {
  description = "Number of instances to create"
  type        = number
  default     = 1
}
```

In this example, we've defined a variable named `instance_count` with a default value of 1. The variable can now be used in your resource configurations:

```hcl
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  count         = var.instance_count
}
```

We use the `var.instance_count` reference to access the value of the `instance_count` variable.

Variables can be defined at different levels in your Terraform configuration: at the root level, in modules, or even dynamically from input files or environment variables.

### Your Task

Your task for today is to experiment with providers and variables in Terraform. Choose a cloud provider of your choice (such as AWS, Azure, or Google Cloud), and try to create a simple infrastructure configuration that uses different resources and variables.

Here are some steps to get you started:

1. Choose a cloud provider and create an account if you don't have one.
2. Configure your provider credentials in your Terraform configuration.
3. Define variables for the resources you want to create, such as instance type, region, etc.
4. Use the provider to create resources based on your variables.

Remember, Terraform is about infrastructure as code (IAC), so try to keep your configurations versioned and maintainable.

Feel free to experiment and have fun exploring Terraform's capabilities with providers and variables! Tomorrow, we'll dive into working with resources and data sources.

🌟 **Congratulations on completing Day 3 of the 30 Days of Terraform challenge!** 🌟

Click [here](./02_Day_Terraform_Syntax/02_day_terraform_syntax.md) to return to the previous day's lesson on Terraform syntax.

Click [here](../04_Day_Resources_Data_Sources/04_day_resources_data_sources.md) to move on to Day 4 and learn about working with resources and data sources.

Happy coding! 🚀
