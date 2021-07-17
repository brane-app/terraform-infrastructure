locals {
  repo_files = [
    ".gitignore",
  ]
}

resource "github_repository_file" "files" {
  for_each = toset(local.repo_files)

  repository          = github_repository.service.name
  branch              = github_branch_default.master.branch
  file                = each.value
  content             = file("${path.module}/repo_files/${each.value}")
  overwrite_on_create = true
}

resource "github_repository_file" "rendered_workflow" {
  repository          = github_repository.service.name
  branch              = github_branch_default.master.branch
  file                = ".github/workflows/test.yml"
  overwrite_on_create = true

  content = templatefile(
    "${path.module}/repo_files/.github/workflows/test.yml",
    { "services" = var.rebuild_services }
  )
}
