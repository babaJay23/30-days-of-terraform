# 30 Days of Terraform: Day 9

## Managing Environments with Terraform Workspaces

Welcome to Day 9 of the **30 Days of Terraform** challenge! In the previous lesson, we delved into managing secrets using HashiCorp Vault. Today, we'll explore a powerful feature of Terraform: workspaces. Workspaces enable you to manage multiple environments and configurations within a single Terraform project.

### The Need for Multiple Environments

In real-world scenarios, you'll likely need to manage your infrastructure in multiple environments, such as development, testing, and production. Each environment may require distinct configuration values, yet it's crucial to maintain a structured and manageable codebase. This is where Terraform workspaces come into play.

### Introducing Terraform Workspaces

A workspace in Terraform is a distinct copy of your entire infrastructure configuration. Workspaces allow you to maintain isolated environments while using the same codebase. Each workspace can have its own set of variables and state files, facilitating the separation of concerns.

### Key Concepts of Terraform Workspaces

Let's explore some key concepts related to Terraform workspaces:

1. **Workspace Creation**: Terraform allows you to create new workspaces using the `terraform workspace new` command. You can provide a name for the workspace, and Terraform will create a new copy of your configuration.

2. **Switching Workspaces**: You can switch between workspaces using the `terraform workspace select` command. This command changes the context of your Terraform commands to the selected workspace.

3. **Workspace-specific State**: Each workspace has its own state file. This ensures that the state of one environment doesn't interfere with another. Terraform automatically manages these separate state files.

4. **Variables per Workspace**: You can define variables specific to each workspace by utilizing workspace-specific variable files. This way, you can tailor the configuration for different environments.

### Getting Started with Workspaces

Here's a roadmap to get you started with managing environments using Terraform workspaces:

1. **Identify Environment Types**: Determine the distinct environment types (e.g., dev, test, prod) that you need to manage within your project.

2. **Create Workspaces**: For each environment type, create a new workspace using the `terraform workspace new` command.

3. **Define Variables**: Craft workspace-specific variable files to define environment-specific values for each workspace.

4. **Configure Backend**: Modify your backend configuration to include workspace-specific settings, ensuring that state files are segregated per workspace.

### Your Task

For today's challenge, you'll apply Terraform workspaces to your project:

1. **Workspace Setup**: Create three workspaces: `dev`, `test`, and `prod`. Use the `terraform workspace new` command to create each workspace.

2. **Variable Configuration**: Designate workspace-specific variables by creating separate variable files for each workspace. Define variables that reflect the unique requirements of each environment.

3. **Backend Configuration**: Modify your backend configuration to incorporate workspace-specific settings. Ensure that state files are stored and managed separately for each workspace.

4. **Deploy Infrastructure**: Utilize Terraform commands to deploy your infrastructure to each workspace: `dev`, `test`, and `prod`.

### Conclusion

Congratulations! You've completed Day 9 of the challenge, gaining valuable insights into managing multiple environments with Terraform workspaces. By implementing workspaces, you're optimizing your infrastructure provisioning process and ensuring clear separation between different environments.

In the upcoming Day 10, we'll explore strategies for managing complex infrastructure deployments using Terraform modules. Stay tuned, and keep up the great work!

To revisit the previous day's lesson on managing secrets with HashiCorp Vault, click [here](../08_Day_Managing_Secrets/08_day_managing_secrets.md).

To proceed to Day 10 and learn about advanced infrastructure management with Terraform modules, click [here](../10_Day_Advanced_Infrastructure_Modules/10_day_advanced_infrastructure_modules.md).

Happy Terraforming! 🚀
