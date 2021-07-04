terraform {
  required_version = ">= 1.0"
  backend "s3" {
    bucket = "dtit-iac-terraform-backend"
    key    = "terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "terraform-lock"
    encrypt = true
  }
}
