variable "environment" {
  description = "The deployment environment (staging/production)"
  type        = string
}

variable "amis" {
  description = "AMI ID for the EC2 instance"
  type        = map(string)
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}
