module "service_repo" {
  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/github/repo/library?ref=master"

  github_token     = var.github_personal_token
  library_name     = "librane"
  repo_description = "The brane library"
  rebuild_services = var.rebuild_services
}
