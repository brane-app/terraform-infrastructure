module "task_definition" {
  for_each = var.service_map
  source   = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/api_service/task_definition?ref=master"

  name   = each.key
  prefix = var.prefix

  container_image = "gastrodon/brane-${each.key}-service"
  path_prefix     = each.value.path_prefix

  execution_role_arn = data.terraform_remote_state.execution-role.outputs.task_execution_role_arn

  database_name     = data.terraform_remote_state.database.outputs.database
  database_username = data.terraform_remote_state.database.outputs.username
  database_password = data.terraform_remote_state.database.outputs.password
  database_endpoint = data.terraform_remote_state.database.outputs.endpoint
}
