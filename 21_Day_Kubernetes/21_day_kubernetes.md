## Day 21: Terraform and Kubernetes

Kubernetes has become a popular choice for container orchestration and application deployment. Terraform can be used to provision and manage the underlying infrastructure that supports Kubernetes clusters. In this lesson, we'll explore how Terraform can be integrated with Kubernetes to create and manage Kubernetes clusters, nodes, and other resources.

### Provisioning a Kubernetes Cluster

To provision a Kubernetes cluster using Terraform, you'll typically use a Kubernetes provider that interacts with the cloud provider's Kubernetes service. This allows you to define and manage your Kubernetes clusters as code. Let's walk through a basic example of provisioning a Kubernetes cluster using Terraform.

Create a file named `main.tf`:

```hcl
provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_cluster" "example_cluster" {
  name = "my-cluster"
  location = "us-central1"
  initial_node_count = 2
}
```

In this example, we're using the `kubernetes` provider to interact with a Kubernetes cluster defined in your kubeconfig file. We define a `kubernetes_cluster` resource with a name, location, and initial node count.

### Managing Kubernetes Resources

Once you have a Kubernetes cluster provisioned, you can use Terraform to manage Kubernetes resources within that cluster. For instance, you can define Kubernetes deployments, services, and namespaces using Terraform's Kubernetes provider. This enables you to define your application workloads and networking configurations alongside your infrastructure code.

```hcl
resource "kubernetes_deployment" "example_app" {
  metadata {
    name = "my-app"
    labels = {
      app = "my-app"
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        app = "my-app"
      }
    }

    template {
      metadata {
        labels = {
          app = "my-app"
        }
      }

      spec {
        container {
          image = "nginx:latest"
          name  = "nginx"
        }
      }
    }
  }
}
```

In this example, we're using the `kubernetes_deployment` resource to define an NGINX deployment with three replicas.

### Challenge

Your challenge for today is to provision a Kubernetes cluster on your chosen cloud provider using Terraform and manage a simple Kubernetes resource, such as a deployment or service, within that cluster. Document the process, including how you integrated Terraform with Kubernetes and the benefits of managing Kubernetes resources as code.

As a bonus, consider exploring more advanced scenarios, such as deploying a multi-node Kubernetes cluster with node pools or using Helm charts to manage applications.

Kubernetes integration with Terraform empowers you to treat your Kubernetes infrastructure as code, ensuring consistency and reproducibility in your deployments.

Keep up the great work! Tomorrow, we'll explore how Terraform can be utilized in serverless architectures.

Continue to [Day 22: Terraform and Serverless Architecture](../22_Day_Serverless_Architecture/22_day_serverless_architecture.md).

Happy coding! 🚀