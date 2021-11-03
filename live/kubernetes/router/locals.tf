locals {
  prefix = "${var.app}-${var.environment}-router"

  labels = {
    app         = var.app
    environment = var.environment
    resource    = local.prefix
  }
}
