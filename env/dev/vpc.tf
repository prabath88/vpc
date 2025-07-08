terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.100"  # Will use 5.100.x versions
    }
  }
}

provider "aws" {
  region = "us-east-1" # Change to your preferred region
}

module "vpc" {
  source = "../../modules/aws-vpc"

  vpc_name          = var.vpc_name
  vpc_cidr          = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = ["${var.aws_region}a", "${var.aws_region}b"]

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  tags = {
    Environment = var.environment
    Project     = "my-app"
  }
}