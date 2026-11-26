output "remote-bucket-name" {
  value       = aws_s3_bucket.state.id
  description = "The name of the S3 bucket used for remote state storage"
}

output "kms-key-arn" {
  value       = aws_kms_key.state.arn
  description = "The ARN of the KMS key used for encrypting the S3 bucket"
}