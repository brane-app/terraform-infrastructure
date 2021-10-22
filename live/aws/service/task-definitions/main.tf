module "task_definition" {
  for_each = var.service_map
  source   = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/api_service/task_definition?ref=master"

  name   = each.key
  prefix = var.prefix

  container_image = data.terraform_remote_state.ecr_repos.outputs.repo_urls[each.key]
  path_prefix     = each.value.path_prefix

  execution_role_arn = data.terraform_remote_state.execution-role.outputs.task_execution_role_arn

  database_name     = data.terraform_remote_state.database.outputs.database
  database_username = data.terraform_remote_state.database.outputs.username
  database_password = data.terraform_remote_state.database.outputs.password
  database_endpoint = data.terraform_remote_state.database.outputs.endpoint
}

module "database_enforcer" {
  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/database-enforcer/task_definition?ref=master"

  name   = "database-enforcer"
  prefix = var.prefix

  container_image    = data.terraform_remote_state.ecr_repos.outputs.repo_urls["database-enforcer"]
  execution_role_arn = data.terraform_remote_state.execution-role.outputs.task_execution_role_arn

  database_name     = data.terraform_remote_state.database.outputs.database
  database_username = data.terraform_remote_state.database.outputs.username
  database_password = data.terraform_remote_state.database.outputs.password
  database_endpoint = data.terraform_remote_state.database.outputs.endpoint
}
