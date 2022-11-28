data "terraform_remote_state" "server" {
  backend = "s3"
  config = {
    bucket = "tfstate-996769503006"
    key = "dev/03-data-sources/terraform.tfstate"
    region = var.aws_region 
  }
}