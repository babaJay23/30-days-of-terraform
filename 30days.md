# 30 Days of Terraform

## 📔 Day 1: Introduction to Terraform

### Introduction

Welcome to the "30 Days of Terraform" programming challenge! In this challenge, you will learn everything you need to become proficient with Terraform, an infrastructure as code (IaC) tool. Terraform allows you to create, manage, and version your infrastructure as code, making it easier to deploy and maintain complex environments.

### Requirements

To participate in this challenge, you'll need:

1. Motivation
2. A computer
3. Internet access
4. A text editor (e.g., Visual Studio Code)

### Setup

Before we dive into Terraform, let's set up our development environment:

1. Install Terraform: Download and install Terraform from the official website.
2. Install a Text Editor: If you don't have one, you can use Visual Studio Code.
3. Verify Terraform Installation: Open a terminal and run `terraform --version` to ensure Terraform is installed.

### Your First Terraform Configuration

Let's start by creating a simple Terraform configuration:

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

# 30 Days of Terraform

| Day | Topics |
| --- | --- |
| [Day 1](./01_Day_Introduction/Introduction.md) | [Introduction to Terraform](./01_Day_Introduction/01_day_introduction.md) |
| [Day 2](./02_Day_Terraform_Syntax/02_day_terraform_syntax.md) | [Terraform Syntax](./02_Day_Terraform_Syntax/02_day_terraform_syntax.md) |
| [Day 3](./03_Day_Providers_Variables/03_day_providers_variables.md) | [Providers and Variables](./03_Day_Providers_Variables/03_day_providers_variables.md) |
| [Day 4](./04_Day_Resources_Data_Sources/04_day_resources_data_sources.md) | [Resources and Data Sources](./04_Day_Resources_Data_Sources/04_day_resources_data_sources.md) |
| [Day 5](./05_Day_Input_Output/05_day_input_output.md) | [Input and Output Variables](./05_Day_Input_Output/05_day_input_output.md) |
| [Day 6](./06_Day_Loops_and_Conditionals/06_day_loops_and_conditionals.md) | [Loops and Conditionals](./06_Day_Loops_and_Conditionals/06_day_loops_and_conditionals.md) |
| [Day 7](./07_Day_Modules/07_day_modules.md) | [Modules in Terraform](./07_Day_Modules/07_day_modules.md) |
| [Day 8](./08_Day_Terraform_State/08_day_terraform_state.md) | [Terraform State](./08_Day_Terraform_State/08_day_terraform_state.md) |
| [Day 9](./09_Day_Workspaces/09_day_workspaces.md) | [Terraform Workspaces](./09_Day_Workspaces/09_day_workspaces.md) |
| [Day 10](./10_Day_Remote_State/10_day_remote_state.md) | [Remote State Management](./10_Day_Remote_State/10_day_remote_state.md) |
| ... | ... |
| [Day 30](./30_Day_Final_Project/30_day_final_project.md) | [Final Project and Recap](./30_Day_Final_Project/30_day_final_project.md) |

Happy coding! 🚀
