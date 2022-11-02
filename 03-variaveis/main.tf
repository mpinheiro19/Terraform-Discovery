terraform {

  required_version = "1.3.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.37.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web" {
  ami           = var.ec2_instance_ami
  instance_type = var.ec2_instance_type

  tags = var.instance_tags
}