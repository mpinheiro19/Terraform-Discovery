variable "name" {
  type        = string
  description = "Bucket Name"
}

variable "acl" {
  type        = string
  description = "Bucket ACL"
  default     = "private"
}

variable "tags" {
  type = map(string)

  description = "Common tags"

  default = {
    Project = "Estudos no Terraform - Modules"

    ManagedBy = "Terraform"

    Owner = "Marco Pinheiro"
  }
}