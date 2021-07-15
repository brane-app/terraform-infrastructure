resource "github_repository" "service" {
  name        = "${var.service_name}-service"
  description = var.repo_description

  license_template = var.repo_license
  visibility       = var.repo_visibility
}

resource "github_branch" "master" {
  repository = github_repository.service.name
  branch     = "master"
}

resource "github_branch_default" "master" {
  repository = github_repository.service.name
  branch     = github_branch.master.branch
}
