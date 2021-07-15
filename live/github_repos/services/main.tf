module "service_repo" {
  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/repo/api_service?ref=master"

  for_each         = var.services
  service_name     = each.value
  repo_description = "The ${each.value} brane microservice"
}
