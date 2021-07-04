provider "aws" {
  region  = "eu-central-1"
}

locals {
  my_local_variable = "spongebob"
}

data "aws_ami" "amazon2" {
  most_recent      = true
  name_regex       = "amzn2-ami-hvm-2.*-x86_64-ebs"
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.*-x86_64-ebs"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon2.id
  instance_type = var.my_instance_type
  subnet_id = "subnet-0adcfb3ccb8217d2d"

  tags = {
    "Name" = "my-ec2-${local.my_local_variable}"
  }
}
