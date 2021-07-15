module "service_repo" {
  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/repo/library?ref=master"

  for_each         = var.libraries
  library_name     = each.value
  repo_description = "The ${each.value} brane library"
}
