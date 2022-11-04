resource "aws_s3_bucket" "this" {

  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl    = "private"

}

resource "aws_s3_object" "this" {
  bucket = aws_s3_bucket.this.bucket

  key = "config/${local.payload_object}"

  source = "${local.payload_folder}/${local.payload_object}"

  etag = filemd5("${local.payload_folder}/${local.payload_object}")

  content_type = "application/json"

  tags = local.common_tags

}