resource "aws_s3_bucket" "test" {
  bucket = "${var.vpc_name}-${random_id.id.hex}"
  acl    = "private"
}

resource "random_id" "id" {
  byte_length = 4
}