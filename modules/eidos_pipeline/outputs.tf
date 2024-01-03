output "arn" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.pipeline_bucket.arn
}
