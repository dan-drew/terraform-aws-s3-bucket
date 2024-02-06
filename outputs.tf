output "bucket" {
  value       = aws_s3_bucket.bucket.bucket
  description = "Bucket name"
}

output "arn" {
  value       = aws_s3_bucket.bucket.arn
  description = "Bucket ARN"
}

output "bucket_domain_name" {
  value       = aws_s3_bucket.bucket.bucket_domain_name
  description = "Bucket domain name"
}

output "bucket_regional_domain_name" {
  value       = aws_s3_bucket.bucket.bucket_regional_domain_name
  description = "Bucket domain name"
}
