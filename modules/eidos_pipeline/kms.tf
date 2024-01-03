resource "aws_kms_key" "eidos_pipeline_key" {
  description             = "KMS key 1"
  deletion_window_in_days = 10
}

resource "aws_kms_alias" "eidos_pipeline_key_alias" {
  name          = "alias/eidos-pipeline"
  target_key_id = aws_kms_key.eidos_pipeline_key.key_id
}

