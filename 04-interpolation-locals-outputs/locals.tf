locals {

  common_tags = {

    Service = "Estudos no Terraform"

    ManagedBy = "Terraform"

    Environment = var.environment

    Owner = "Marco Pinheiro"
  }

  payload_folder = "files"

  payload_object = "ips.json"
}