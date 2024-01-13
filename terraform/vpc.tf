module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 4.0"

  cidr = var.vpc_cidr_block

  azs                 = ["${var.provider_region}a", "${var.provider_region}b"]
  public_subnets      = var.vpc_public_subnets
  public_subnet_tags  = var.public_subnet_tags
  private_subnets     = var.vpc_private_subnets
  private_subnet_tags = var.private_subnet_tags
  enable_nat_gateway  = var.enable_nat_gateway
  single_nat_gateway  = var.enable_simple_nat_gateway
  tags = {
    Name = "ec2-vpc"
  }
}
