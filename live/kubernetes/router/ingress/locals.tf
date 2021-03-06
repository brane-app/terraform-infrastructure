locals {
  prefix = "${var.app}-${var.environment}-ingress"

  labels = {
    app         = var.app
    environment = var.environment
    resource    = local.prefix
  }
}
