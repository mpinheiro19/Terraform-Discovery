terraform {

    required_version = "1.3.3"

    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "4.37.0"
      }
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "b" {
    bucket = "mpinheiro19-my-tf-test-bucket"
   
    tags = {

    Name        = "My bucket"

    Environment = "Dev"

    Managedby = "Terraform"

    }
}

resource "aws_s3_bucket_acl" "example" {
    bucket = aws_s3_bucket.b.id
    acl = "private"

}