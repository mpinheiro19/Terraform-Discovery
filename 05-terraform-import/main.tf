terraform {

  required_version = "1.3.3"
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "4.37.0"

    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "aws" {
  region = var.aws_region
}