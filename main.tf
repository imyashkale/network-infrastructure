module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.4.0"

  // Details
  name            = local.name
  cidr            = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets

  # Datbase
  database_subnets                   = var.vpc_database_subnets
  create_database_subnet_group       = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table

  # NAT
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway

  # VPC DNS
  enable_dns_hostnames = true
  enable_dns_support   = true

  # Tags
  tags     = local.tags
  vpc_tags = local.tags

  public_subnet_tags = {
    Type                                  = "Public"
    "kubernetes.io/role/elb"              = 1
    "kubernetes.io/cluster/${local.name}" = "shared"
  }
  private_subnet_tags = {
    Type                                  = "Private"
    "kubernetes.io/role/internal-elb"     = 1
    "kubernetes.io/cluster/${local.name}" = "shared"
  }

  # For Public Subnet Launched Instances - to get the public IP
  map_public_ip_on_launch = true
}
