resource "github_repository" "service" {
  name        = var.library_name
  description = var.repo_description

  license_template = var.repo_license
  visibility       = var.repo_visibility

  has_issues = true
  has_wiki   = true
}

resource "github_branch" "master" {
  repository = github_repository.service.name
  branch     = "master"
}

resource "github_branch_default" "master" {
  repository = github_repository.service.name
  branch     = github_branch.master.branch
}
