variable "environment" {

  type = string

  description = ""

}

variable "aws_region" {

  type = string

  description = ""

}

variable "ec2_instance_ami" {

  type = string

  description = ""

}

variable "ec2_instance_type" {

  type = string

  description = ""

}

variable "instance_tags" {

  type = map(string)

  description = ""

  default = {

    Name = "Amazon Linux"

    Project = "Estudos de AWS com Terraform"

  }

}