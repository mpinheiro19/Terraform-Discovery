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
  region = "us-east-1"
}

resource "random_pet" "this" {
  length = 5
}

module "bucket" {
  source = "./s3_module"
  name   = random_pet.this.id
}