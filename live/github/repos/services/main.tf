module "service_repo" {
  for_each = var.services

  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/repo/api_service?ref=master"

  service_name     = each.value
  repo_description = "The ${each.value} brane microservice"

  dockerhub_token    = var.dockerhub_token
  dockerhub_username = var.dockerhub_username
}
