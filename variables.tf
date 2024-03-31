############## APLICATION VARs #########################
variable "aws_region" {
  type        = string
  description = "AWS Region"
}

variable "enviroment" {
  type        = string
  description = "Application Deployment Enviroment"
}

variable "application" {
  type        = string
  description = "Application Name"
}

############## VPC VARs #########################

variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "vpc"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_availability_zones" {
  description = "AWS VPC Availability Zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "vpc_public_subnets" {
  description = "AWS VPC Public Subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_database_subnets" {
  description = "AWS VPC Database Subnetes"
  type        = list(string)
  default     = ["10.0.151.0/24", "10.0.152.0/24"]
}

variable "vpc_create_database_subnet_group" {
  description = "VPC Create Database Subnet Group"
  type        = bool
  default     = true
}

variable "vpc_create_database_subnet_route_table" {
  description = "VPC Create Database Subnet Route Table"
  type        = bool
  default     = true
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type        = bool
  default     = true
}

variable "vpc_single_nat_gateway" {
  description = "Single NAT Gateway Deployment"
  type        = bool
  default     = true
}

variable "eks_cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = "ultra"
}
