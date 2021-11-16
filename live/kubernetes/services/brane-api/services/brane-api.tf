module "brane_api" {
  source   = "git::ssh://git@github.com/brane-app/terraform-infrastructure.git//modules/kubernetes/service/brane-api?ref=master"
  for_each = var.services

  app         = var.app
  environment = var.environment
  namespace   = data.terraform_remote_state.namespace.outputs.namespace_name

  database_address  = data.terraform_remote_state.database.outputs.address
  database_port     = data.terraform_remote_state.database.outputs.port
  database_name     = data.terraform_remote_state.database.outputs.name
  database_user     = data.terraform_remote_state.database.outputs.user
  database_password = data.terraform_remote_state.database.outputs.password

  ferrothorn_host   = data.terraform_remote_state.ferrothorn.outputs.ferrothorn_address
  ferrothorn_secret = data.terraform_remote_state.ferrothorn.outputs.ferrothorn_secret

  service             = each.key
  service_image       = "${var.image_namespace}/${each.value["image"]}"
  service_image_label = "latest"
  service_path_prefix = var.services[each.key]["path"]
}
