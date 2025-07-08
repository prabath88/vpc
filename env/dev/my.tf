terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_s3_bucket" "test" {
  bucket = "test-bucket-${random_id.id.hex}"
  acl    = "private"
}

resource "random_id" "id" {
  byte_length = 4
}
