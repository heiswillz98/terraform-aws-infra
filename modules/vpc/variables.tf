variable "environment" {
  description = "The deployment environment (staging/production)"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}
