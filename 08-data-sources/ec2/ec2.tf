resource "aws_instance" "web" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.ec2_instance_type
}