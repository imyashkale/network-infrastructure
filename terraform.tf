terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.31"
    }
  }

  cloud {
    organization = "ULTRA"
    workspaces {
      name = "networking-layer"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
