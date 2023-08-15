# 30 Days of Terraform: Day 4

## Resources and Data Sources

Welcome to Day 4 of the **30 Days of Terraform** challenge! In the previous lessons, we learned about providers and variables. Today, we will dive into working with **resources** and **data sources** in Terraform.

### Resources

Resources are fundamental components in Terraform that allow you to define and manage various infrastructure objects. These can range from virtual machines and networks to databases and security groups. Terraform ensures that the actual state of your infrastructure matches the desired state defined in your configuration.

Let's explore how to define a resource in Terraform using an example. Below is a snippet of code that defines an AWS EC2 instance:

```hcl
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
```

In this example, we are creating an AWS EC2 instance named "example" using a specific Amazon Machine Image (AMI) and instance type.

Resources can have various attributes that you can customize based on your requirements. For instance, you can specify the number of instances using the `count` attribute or add metadata using the `tags` attribute.

### Data Sources

Data sources in Terraform enable you to fetch information from your cloud provider's platform and use that data within your configuration. This is particularly useful when you need to reference existing resources or retrieve specific details about your infrastructure.

Let's delve into a practical example of using a data source. The following code demonstrates how to use a data source to fetch information about an AWS Amazon Machine Image (AMI) and then use that AMI in your resource definition:

```hcl
data "aws_ami" "example" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t2.micro"
}
```

In this example, the `data "aws_ami" "example"` block retrieves the most recent Amazon Linux 2 AMI that matches the specified criteria. The `aws_instance` resource then uses the ID of that AMI in its configuration.

### Your Task

For today's challenge, let's put your knowledge of resources and data sources into action:

1. **Select a Cloud Provider:** Choose the cloud provider you're most comfortable with or eager to explore further.

2. **Choose a Resource:** Identify a specific resource type you wish to create, such as an EC2 instance, a virtual network, or a database.

3. **Utilize a Data Source:** Pick a relevant data source that provides information necessary for your chosen resource. This could be an AMI, a subnet, or any other suitable data source.

4. **Create the Configuration:** Craft a Terraform configuration that includes the chosen resource and data source. Define attributes for the resource and utilize data from the data source.

5. **Apply the Configuration:** Run the standard Terraform commands: `terraform init`, `terraform plan`, and `terraform apply`. Observe how Terraform ensures the actual infrastructure matches your desired state.

Remember, the power of Terraform lies in its ability to define and manage complex infrastructure setups using a declarative approach.

### Conclusion

Fantastic job completing Day 4 of the challenge! Today, you learned about resources and data sources, essential concepts in Terraform for defining and managing infrastructure. Tomorrow, we'll explore the lifecycle of resources and how to handle changes to your infrastructure configuration.

🌟 **Congratulations and keep up the great work!** 🌟

To revisit the previous day's lesson on providers and variables, click [here](./03_Day_Providers_Variables/03_day_providers_variables.md).

To proceed to Day 5 and learn about resource lifecycles and handling changes, click [here](../05_Day_Resource_Lifecycle_Changes/05_day_resource_lifecycle_changes.md).

Happy Terraforming! 🚀

