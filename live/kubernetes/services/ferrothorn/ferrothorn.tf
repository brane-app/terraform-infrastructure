module "ferrothorn" {
  # TODO use git repo address
  source = "/home/zero/Documents/programming/brane/terraform-infrastructure/modules/kubernetes/service/ferrothorn"

  app         = var.app
  environment = var.environment
  namespace   = data.terraform_remote_state.namespace.outputs.namespace_name
}
