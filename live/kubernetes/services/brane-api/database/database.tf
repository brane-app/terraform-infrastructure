module "database" {
  source = "/home/zero/Documents/programming/brane/terraform-infrastructure/modules/kubernetes/database"

  name        = "brane-api"
  app         = var.app
  environment = var.environment
  namespace   = data.terraform_remote_state.namespace.outputs.namespace_name
}
