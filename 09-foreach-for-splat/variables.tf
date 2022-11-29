variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "ec2_instance_ami" {
  type        = string
  description = ""
  default     = "ami-09d3b3274b6c5d4aa"
}

variable "ec2_instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}