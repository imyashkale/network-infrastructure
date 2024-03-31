output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "VPC CIDR Block"
  value       = module.vpc.vpc_cidr_block
}

output "public_subnets" {
  description = "Public Subnets Ids"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "Private Subnets Ids"
  value       = module.vpc.private_subnets
}

output "nat_public_ips" {
  description = "AWS NAT Gateway Public IP"
  value       = module.vpc.nat_public_ips
}

output "azs" {
  description = "AWS Availability Zones"
  value       = module.vpc.azs
}
