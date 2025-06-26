resource "aws_instance" "app" {
  ami           = lookup(var.amis, var.aws_region)
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name        = "${var.environment}-app"
    Environment = var.environment
  }
}
