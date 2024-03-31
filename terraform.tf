terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.31"
    }
  }

  backend "s3" {
    bucket = "infrastructure-statefile"
    key    = "infrastructure/vpc/statefile"
    region = "ap-south-1"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "default"
}
