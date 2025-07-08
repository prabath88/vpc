terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40.0"
    }
  }

  backend "s3" {
    bucket         = "tf-state-file-exp"
    key            = "c1/dev/terraform.tfstate"
    region         = "ap-southeast-2"              # Replace with your AWS region
    #dynamodb_table = "your-dynamodb-table-name"    # Optional but recommended
    encrypt        = true
  }

}

provider "aws" {
  region = "ap-southeast-2"
}
