locals {
  prefix    = "${var.environment}-service-consul"
  namespace = data.terraform_remote_state.namespace.outputs.namespace_name

  labels = {
    app         = "service-consul"
    environment = var.environment
    namespace   = local.namespace
  }
}
