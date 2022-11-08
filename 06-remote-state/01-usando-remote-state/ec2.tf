resource "aws_instance" "web" {
  ami           = var.ec2_instance_ami
  instance_type = var.ec2_instance_type

  tags = {
    Name = "Remote State"
    Env  = "dev"
  }
}