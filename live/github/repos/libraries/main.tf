module "service_repo" {
  for_each = var.libraries

  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/repo/library?ref=master"

  github_token     = var.github_personal_token
  library_name     = each.value
  repo_description = "The ${each.value} brane library"
  rebuild_services = var.rebuild_services
}
