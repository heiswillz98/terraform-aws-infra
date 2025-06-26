module "ec2" {
  source        = "../../modules/ec2"
  aws_region    = var.aws_region
  amis          = var.amis
  environment   = var.environment
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.public_subnet_id
  instance_type = var.instance_type

}

module "vpc" {
  source      = "../../modules/vpc"
  environment = var.environment
  cidr_block  = var.vpc_cidr_block
}
