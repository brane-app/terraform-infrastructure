module "enforcer" {
  # TODO
  source = "/home/zero/Documents/programming/brane/terraform-infrastructure/modules/kubernetes/service/database-enforcer"

  database_address  = data.terraform_remote_state.database.outputs.address
  database_port     = data.terraform_remote_state.database.outputs.port
  database_name     = data.terraform_remote_state.database.outputs.name
  database_user     = data.terraform_remote_state.database.outputs.user
  database_password = data.terraform_remote_state.database.outputs.password

  image     = var.image
  image_tag = var.image_tag
  replicas  = 2

  app         = var.app
  environment = var.environment
  namespace   = data.terraform_remote_state.namespace.outputs.namespace_name
}
