module "ferrothorn" {
  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/kubernetes/service/ferrothorn?ref=feat/kubernetes"

  app         = var.app
  environment = var.environment
  namespace   = data.terraform_remote_state.namespace.outputs.namespace_name
}
