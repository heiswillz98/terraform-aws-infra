# VPC Module

This module provisions a VPC, a public subnet, an Internet Gateway, and a route table in AWS to enable public internet access.

## Inputs

- environment: The deployment environment (e.g., staging, production).
- cidr_block: The CIDR block for the VPC.

## Outputs

- vpc_id: The ID of the created VPC.
- public_subnet_id: The ID of the public subnet.

## Usage

```hcl
module "vpc" {
  source = "./modules/vpc"

  environment = "staging"
  cidr_block  = "10.0.0.0/16"
}
```
