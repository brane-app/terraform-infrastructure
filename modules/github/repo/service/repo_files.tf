locals {
  repo_files = [
    ".gitignore",
    "Dockerfile",
    "main.go",
    "package_test.go",
  ]
}

resource "github_repository_file" "files" {
  for_each = toset(local.repo_files)

  repository          = github_repository.service.name
  branch              = github_branch_default.master.branch
  file                = each.value
  content             = file("${path.module}/repo_files/${var.language}/${each.value}")
  overwrite_on_create = true
}


resource "github_repository_file" "rendered_workflow" {
  repository          = github_repository.service.name
  branch              = github_branch_default.master.branch
  file                = ".github/workflows/test.yml"
  overwrite_on_create = true

  content = templatefile(
    "${path.module}/repo_files/${var.language}/.github/workflows/test.yml",
    {
      "app"                = var.app
      "environment"        = var.environment
      "aws_region"         = var.aws_region,
      "dockerhub_username" = var.dockerhub_username,
      "ecr_namespace"      = var.ecr_namespace,
    },
  )

  depends_on = [
    github_actions_secret.dockerhub_token,
    github_actions_secret.dockerhub_username,
    github_actions_secret.aws_access_key_id,
    github_actions_secret.aws_secret_access_key,
  ]
}
