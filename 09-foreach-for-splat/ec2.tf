data "aws_ami" "ubuntu" {
  owners      = ["amazon"]
  most_recent = true
  name_regex  = "Ubuntu"
}

resource "aws_instance" "this" {
  for_each = {
    web = {
      name = "Web Server"
      type = "t2.micro"
    }

    ci_cd = {
      name = "CI/CD Server"
      type = "t3.micro"
    }
  }

  ami           = data.aws_ami.ubuntu.id
  instance_type = lookup(each.value, "type", null)
  tags = {

    Project = "Estudos de AWS com Terraform"
    Name    = "${each.key}: ${lookup(each.value, "name", null)}"
    Lesson  = "For each, for, splat"
  }
}