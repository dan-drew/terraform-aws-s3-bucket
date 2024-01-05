resource "aws_s3_bucket" "bucket" {
  bucket = var.name
}

resource "aws_s3_bucket_acl" "bucket" {
  bucket = aws_s3_bucket.bucket.bucket
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "bucket" {
  bucket              = aws_s3_bucket.bucket.id
  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
}

resource "aws_s3_bucket_versioning" "bucket" {
  count  = var.versioned ? 1 : 0
  bucket = aws_s3_bucket.bucket.bucket

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "bucket" {
  count  = var.encrypt ? 1 : 0
  bucket = aws_s3_bucket.bucket.id
  rule {
    bucket_key_enabled = true
  }
}
