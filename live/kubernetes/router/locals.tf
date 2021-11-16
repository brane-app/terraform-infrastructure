locals {
  prefix = "${var.app}-${var.environment}-router"

  traefik_port = 80

  labels = {
    app         = var.app
    environment = var.environment
    resource    = local.prefix
  }
}
