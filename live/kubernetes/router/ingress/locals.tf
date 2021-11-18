locals {
  prefix = "${var.app}-${var.environment}-router"

  traefik_port_http  = 80
  traefik_port_https = 443

  labels = {
    app         = var.app
    environment = var.environment
    resource    = local.prefix
  }
}
