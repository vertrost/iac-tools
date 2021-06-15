provider "aws" {
  region  = "eu-central-1"
}

locals {
  flower = ( var.color == "red" ? "rose" : "tulip" )
}

resource "aws_s3_bucket" "bucket" {
  bucket = join("-", ["my-bucket", local.flower])
  acl    = "private"
}
