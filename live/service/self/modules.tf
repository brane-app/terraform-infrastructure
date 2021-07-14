module "task_definition" {
  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/api_service/task_definition?ref=master"

  name   = "self"
  prefix = var.prefix

  container_image = "gastrodon/imonke-self-service"

  execution_role_arn = data.terraform_remote_state.execution-role.outputs.task_execution_role_arn

  database_name     = data.terraform_remote_state.database.outputs.database
  database_username = data.terraform_remote_state.database.outputs.username
  database_password = data.terraform_remote_state.database.outputs.password
  database_endpoint = data.terraform_remote_state.database.outputs.endpoint
}

module "service" {
  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/api_service/service?ref=master"

  name   = "self"
  prefix = var.prefix

  task_definition        = module.task_definition.task_definition_arn
  listener_paths         = ["/self"]
  health_check_path      = "/"
  health_check_matcher   = "401"
  service_container_port = 8000

  balancer_arn = data.terraform_remote_state.balancer.outputs.balancer_arn
  listener_arn = data.terraform_remote_state.balancer.outputs.http_listener_arn
  cluster_arn  = data.terraform_remote_state.cluster.outputs.cluster_arn
  host_vpc_id  = data.terraform_remote_state.network.outputs.vpc_id
}
