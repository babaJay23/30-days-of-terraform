## Day 12: Conditional Resource Creation

Welcome to Day 12 of the **30 Days of Terraform** challenge! In today's lesson, we'll delve into conditional resource creation, a technique that allows you to provision resources based on certain conditions.

### Topics Covered

- Introduction to Conditional Resource Creation
- Using `count` and `for_each` to Conditionally Create Resources
- Dynamic Blocks for Conditional Resource Configuration

### Explanation

Conditional resource creation enables you to control when specific resources are provisioned. This is particularly useful when you want to create resources only under certain circumstances or when you need to create multiple instances of a resource with varying attributes.

### Using `count` and `for_each`

In Terraform, the `count` and `for_each` arguments can be used to conditionally create resources. By setting these arguments dynamically based on conditions, you can control the number of resource instances created.

```hcl
resource "aws_instance" "web_server" {
  count = var.create_web_server ? 1 : 0

  # ... other instance configuration ...
}
```

In this example, the `aws_instance` resource will be created only if the `create_web_server` variable is set to `true`.

### Dynamic Blocks

Dynamic blocks provide another approach to conditionally configuring resource attributes. They allow you to define blocks of configuration within a resource that are conditionally included based on certain conditions.

```hcl
resource "aws_security_group" "example" {
  name = "example"

  dynamic "ingress" {
    for_each = var.enable_ingress_rule ? [1] : []
    content {
      from_port = 22
      to_port   = 22
      protocol  = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
```

Here, the `ingress` block will be included only if the `enable_ingress_rule` variable is set to `true`.

### Challenge

Your challenge for today is to create a Terraform configuration that provisions an AWS S3 bucket if a specific condition is met. Additionally, modify the configuration to conditionally apply a bucket policy if a different condition is satisfied.

### Conclusion

Conditional resource creation is a powerful feature that allows you to fine-tune your infrastructure provisioning based on conditions. This enables you to create flexible and adaptive configurations.

Congratulations on completing Day 12! You're well on your way to becoming a Terraform pro!

---