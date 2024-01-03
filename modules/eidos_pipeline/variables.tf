variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  type        = string
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}

variable "stack_name" {
  description = "Name of the CloudFormation Stack"
  type        = string
  default     = "Eidos Pipeline"
}

variable "pipeline_name" {
  description = "Name of the Code Pipeline"
  type        = string
  default     = "eidos-pipeline"
}

variable "project_name" {
  description = "Name of the Code Pipeline Project"
  type        = string
  default     = "EidosPipeline"
}

variable "repository_id" {
  description = "Name of the Github repository"
  type        = string
  default     = "agathos-cloud/eidos-organization"
}


variable "repository_url" {
  description = "Url of the Github repository"
  type        = string
  default     = "https://github.com/agathos-cloud/eidos-organization.git"
}
