# Terraform Project: Staging and Production Environments

This project uses Terraform to provision and manage infrastructure for staging and production environments in AWS. It follows best practices for modularity, state management, and variable configuration.

## Folder Structure

<pre lang="text"><code> terraform-project/ ├── environments/ │ ├── staging/ │ │ ├── main.tf │ │ ├── backend.tf │ │ ├── terraform.tfvars │ │ ├── outputs.tf │ │ └── variables.tf │ └── production/ │ ├── main.tf │ ├── backend.tf │ ├── terraform.tfvars │ ├── outputs.tf │ └── variables.tf ├── modules/ │ ├── vpc/ │ │ ├── main.tf │ │ ├── variables.tf │ │ ├── outputs.tf │ │ └── README.md │ └── ec2/ │ ├── main.tf │ ├── variables.tf │ ├── outputs.tf │ └── README.md └── README.md </code></pre>

## Prerequisites

Terraform >= 1.5.0
AWS CLI configured with appropriate credentials
An S3 bucket and DynamoDB table for state management

## Setup

1. Initialize Terraform:

```bash
cd environments/staging
terraform init
```

```bash
cd environments/production
terraform init
```

2. Deploy Staging Environment:

```bash
cd environments/staging
terraform apply
```

3. Deploy Production Environment:

```
cd environments/production
terraform apply
```

## State Management

- State is stored in an AWS S3 bucket (my-terraform-state-bucket) with separate keys for each environment (staging/terraform.tfstate and production/terraform.tfstate).

- State locking is enabled using a DynamoDB table (terraform-state-lock).

## Modules

- VPC Module: Provisions a VPC, a public subnet, an Internet Gateway, and a route table.
- EC2 Module: Provisions an EC2 instance with a public IP address.
