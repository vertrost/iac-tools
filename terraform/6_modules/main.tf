provider "aws" {
  region  = "eu-central-1"
}

locals {
  my_unique_name = "spongebob"
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "2.5.0"

  bucket = "${local.my_unique_name}-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }

}
