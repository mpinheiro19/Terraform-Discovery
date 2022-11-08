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

data "aws_caller_identity" "current" {

}

resource "aws_s3_bucket" "remote-state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"
  tags = {
    Description = "Stores Terraform remote state files"
    ManagedBy   = "Terraform"
    Owner       = "Marco Pinheiro"
    CreatedAt   = "07/11/2022"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.remote-state.id
  versioning_configuration {
    status = "Enabled"
  }
}

output "remote_state_bucket" {
  value = aws_s3_bucket.remote-state.bucket
}

output "remote_state_bucket_arn" {
  value = aws_s3_bucket.remote-state.arn
}