module "database" {
  source = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/kubernetes/database?ref=master"

  name        = "brane-api"
  app         = var.app
  environment = var.environment
  namespace   = data.terraform_remote_state.namespace.outputs.namespace_name
}
