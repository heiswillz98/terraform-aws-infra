# EC2 Module

This module provisions an EC2 instance in AWS with a public IP address.

### Inputs

- environment: The deployment environment (e.g., staging, production).
- vpc_id: The ID of the VPC.
- subnet_id: The ID of the subnet.
- instance_type: The EC2 instance type.

### Outputs

- instance_id: The ID of the EC2 instance.
- public_ip: The public IP of the EC2 instance.

Usage

```hcl
module "ec2" {
  source = "./modules/ec2"

  environment   = "staging"
  vpc_id        = "<vpc_id>"
  subnet_id     = "<subnet_id>"
  instance_type = "t2.micro"
}
```
