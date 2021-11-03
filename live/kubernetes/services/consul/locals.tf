locals {
  prefix = "${var.app}-${var.environment}-consul"

  labels = {
    app         = var.app
    environment = var.environment
    resource    = local.prefix
  }
}
