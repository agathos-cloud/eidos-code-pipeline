
resource "aws_s3_bucket" "pipeline_bucket" {
  bucket = var.bucket_name
  tags = var.tags
}


