locals {
  instance_number = lookup(var.instance_number, var.env)
  file_ext = "zip"
  object_name = "arquivo_gerado_via_template"
  common_tags = {
    "Owner" = "Marco Pinheiro"
    "Data" = "08/11/2022"
  }
}