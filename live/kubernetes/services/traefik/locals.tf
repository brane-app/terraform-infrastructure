locals {
  prefix = "${var.app}-${var.environment}-traefik"

  volume_config = "${local.prefix}-config"

  labels = {
    app         = var.app,
    environment = var.environment,
    resource    = local.prefix,
  }
}
