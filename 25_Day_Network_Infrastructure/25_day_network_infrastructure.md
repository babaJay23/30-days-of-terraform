## Day 25: Terraform and Network Infrastructure

Welcome to Day 25 of the 30 Days of Terraform challenge! Today, we're going to explore how Terraform can be used to define and manage network infrastructure. Networks play a crucial role in modern applications, and using Terraform to manage them ensures consistency, repeatability, and scalability.

### The Role of Network Infrastructure

Network infrastructure forms the backbone of any application, enabling communication between various components. It includes elements like virtual networks, subnets, security groups, and more. As your infrastructure grows, maintaining a well-organized and secure network becomes increasingly important.

Terraform provides the tools to define and manage these network components in a declarative and versioned manner, making it easier to manage and scale your network infrastructure over time.

### Defining Network Infrastructure

Let's take a look at a simple example of defining network infrastructure using Terraform for an AWS VPC (Virtual Private Cloud):

```hcl
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_security_group" "my_security_group" {
  name_prefix = "my-security-group-"
  
  // ... other security group configurations ...
}
```

In this example, we're creating an AWS VPC, a subnet within that VPC, and a security group. These resources can then be used to launch instances and other services within your network.

### Managing Network Relationships

Terraform's strength lies in managing complex relationships between resources. For example, you might need to associate a security group with an EC2 instance or configure routing tables for subnets. Terraform allows you to express these relationships in code:

```hcl
resource "aws_instance" "my_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  subnet_id      = aws_subnet.my_subnet.id
  security_groups = [aws_security_group.my_security_group.id]
}
```

### Challenge

For today's challenge, you're tasked with creating a network infrastructure for a web application that includes the following components:

1. **Virtual Private Cloud (VPC):** Create a VPC with an appropriate IP range.
2. **Subnets:** Define two subnets within the VPC - one for public resources (e.g., load balancers) and another for private resources (e.g., application servers).
3. **Security Groups:** Configure security groups for the subnets, allowing necessary inbound and outbound traffic.
4. **Routing and Internet Gateway:** Set up routing tables and an Internet Gateway to ensure connectivity to the public subnet.

Feel free to use any cloud provider that you're comfortable with (AWS, Azure, GCP, etc.), and leverage Terraform to define and manage these network components.

By completing this challenge, you'll have gained valuable experience in designing and deploying network infrastructure using Terraform. Tomorrow, we'll explore techniques for visualizing and managing your Terraform state.

Keep up the great work and happy networking! 🌐🚀

---

**[Next Day: Day 26 - State Visualization and Management](../26_Day_State_Visualization_Management/26_day_state_visualization_management.md)**