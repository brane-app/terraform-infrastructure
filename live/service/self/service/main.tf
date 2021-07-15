module "service" {
  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/api_service/service?ref=master"

  name   = "self"
  prefix = var.prefix

  listener_paths         = ["/self"]
  health_check_path      = "/"
  health_check_matcher   = "401"
  service_container_port = 8000

  task_definition = data.terraform_remote_state.task_definition.outputs.task_definition_arn
  balancer_arn    = data.terraform_remote_state.balancer.outputs.balancer_arn
  listener_arn    = data.terraform_remote_state.balancer.outputs.http_listener_arn
  cluster_arn     = data.terraform_remote_state.cluster.outputs.cluster_arn
  host_vpc_id     = data.terraform_remote_state.network.outputs.vpc_id
}
