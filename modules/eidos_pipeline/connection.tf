resource "aws_codestarconnections_connection" "eidos_connection" {
  name          = "eidos-connection"
  provider_type = "GitHub"
  tags = var.tags
}
