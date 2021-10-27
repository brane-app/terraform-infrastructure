module "api_service" {
  for_each = var.service_map
  source   = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/api_service/service?ref=master"

  name            = each.key
  prefix          = var.prefix
  task_definition = data.terraform_remote_state.task-definitions.outputs.task_definition_services_arns[each.key]

  listener_paths         = each.value.paths
  listener_methods       = each.value.methods
  health_check_path      = "/health"
  service_container_port = 8000

  listener_arn = data.terraform_remote_state.balancer.outputs.http_listener_arn
  cluster_arn  = data.terraform_remote_state.cluster.outputs.cluster_arn
  host_vpc_id  = data.terraform_remote_state.network.outputs.vpc_id
}

module "database_enforcer" {
  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/database-enforcer/service?ref=master"

  name            = "database-enforcer"
  prefix          = var.prefix
  task_definition = data.terraform_remote_state.task-definitions.outputs.task_definition_database_enforcer_arn

  cluster_arn = data.terraform_remote_state.cluster.outputs.cluster_arn
  host_vpc_id = data.terraform_remote_state.network.outputs.vpc_id
}

module "ferrothorn" {
  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/ferrothorn/service?ref=feat/deploy-ferrothorn"

  prefix          = var.prefix
  task_definition = data.terraform_remote_state.task-definitions.outputs.task_definition_ferrothorn_arn

  listener_arn = data.terraform_remote_state.balancer.outputs.http_listener_arn
  cluster_arn  = data.terraform_remote_state.cluster.outputs.cluster_arn
  host_vpc_id  = data.terraform_remote_state.network.outputs.vpc_id
}
