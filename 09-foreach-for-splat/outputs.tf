output "extension" {
  value = local.file_extensions
}

output "instance_arn" {
  value = [for k, v in aws_instance.this : v.arn]
}

output "instance_mapper" {
  value = { for k, v in aws_instance.this : k => v.tags.Name }
}

output "instance_arn_mapper" {
  value = { for k, v in aws_instance.this : k => v.arn }
}

output "file_extensions_mapper" {
  value = { for file in local.files : file => regex("\\.[0-9a-z]+$", file) }
}

#splat
output "private_ips" {
  value = local.ips[*].private
}

output "public_ips" {
  value = local.ips[*].public
}