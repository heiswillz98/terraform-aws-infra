variable "amis" {
  description = "AMI ID for the EC2 instance"
  type        = map(string)
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}


variable "environment" {
  description = "The deployment environment (staging/production)"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}
