
module "s3" {
  source = "../../modules/s3"

  vpc_name          = var.vpc_name

}