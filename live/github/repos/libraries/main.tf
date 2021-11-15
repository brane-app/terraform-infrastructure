module "service_repo" {
  for_each = var.libraries

  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/github/repo/library?ref=feat/kubernetes-aws"

  github_token     = var.github_personal_token
  library_name     = each.value
  repo_description = "The ${each.value} brane library"
  rebuild_services = var.rebuild_services
}
