variable "env" {}

variable "aws_region" {
  type = string
  description = ""
  default = "us-east-1"
}

variable "instance_ami" {
  type = string
  description = ""
  default = "ami-09d3b3274b6c5d4aa"

  validation {
    condition = length(var.instance_ami) > 4 && substr(var.instance_ami,0,4) == "ami-"
    error_message = "AMI value must be a valid AMI id"
  }
}

variable "instance_number" {
  type = object({
    dev = number
    prod = number
  })
  description = "Number of instances to create"
  default = {
    dev = 1
    prod = 2
  }
}

variable "instance_type" {
  type = object({
    dev = string
    prod = string
  })
  description = ""
  default = {
    dev = "t1.micro"
    prod = "t2.micro"
  }
}