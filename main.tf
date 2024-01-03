terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

module "eidos_pipeline" {
  source = "./modules/eidos_pipeline"

  bucket_name = "eidos-pipeline"

  tags = {
    Terraform   = "true"
    Component = "eidos-pipeline"
    DeploymentIdentifier = "eidos-hydrogen"
  }
}
