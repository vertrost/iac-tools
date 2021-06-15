provider "aws" {
  region  = "eu-central-1"
}

locals {
  my_unique_name = "szhekpis"
}

resource "aws_s3_bucket" "bucket_for_each" {
  for_each = var.buckets
  bucket = join("-", [local.my_unique_name, each.key])
  acl    = "private"
}

resource "aws_s3_bucket" "bucket_count" {
  count = 2

  bucket = join("-", [local.my_unique_name, count.index])
  acl    = "private"
}
