vpc_name = "my-dev-vpc"
vpc_cidr = "10.1.0.0/16"

public_subnet_cidrs = ["10.1.1.0/24", "10.1.2.0/24"]
private_subnet_cidrs = ["10.1.11.0/24", "10.1.12.0/24"]

enable_nat_gateway = true
single_nat_gateway = false

environment = "dev"
aws_region = "ap-southeast-2"