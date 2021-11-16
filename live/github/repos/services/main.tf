module "service_repo" {
  for_each = var.services

  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/github/repo/service?ref=master"

  service_name     = each.value
  repo_description = "The ${each.value} ${var.app} microservice"

  ecr_namespace         = var.ecr_namespace
  aws_access_key_id     = data.terraform_remote_state.ecr_repos.outputs.image_pusher_id_key
  aws_secret_access_key = data.terraform_remote_state.ecr_repos.outputs.image_pusher_secret_key

  dockerhub_token    = var.dockerhub_token
  dockerhub_username = var.dockerhub_username

  app         = var.app
  environment = var.environment
}
