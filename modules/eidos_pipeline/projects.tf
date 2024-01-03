resource "aws_codebuild_project" "terraform-builder" {
  name           = var.project_name
  description    = "terraform"
  build_timeout  = 5
  queued_timeout = 5

  service_role = aws_iam_role.pipeline_role.arn

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/amazonlinux2-x86_64-standard:4.0"
    type                        = "LINUX_CONTAINER"
    image_pull_credentials_type = "CODEBUILD"

    environment_variable {
      name  = "SOME_KEY1"
      value = "SOME_VALUE1"
    }
  }

  source {
    type            = "GITHUB"
    location        = var.repository_url
    git_clone_depth = 1
  }

  tags = var.tags
}
