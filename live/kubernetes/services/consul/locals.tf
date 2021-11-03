locals {
  prefix = "${var.app}-${var.environment}-consul"

  port_rcp_tcp  = 8300
  port_rcp_udp  = 8301
  port_serf_tcp = 8301
  port_http_tcp = 8500
  port_dns_tcp  = 8600
  port_dns_udp  = 8600

  labels = {
    app         = var.app
    environment = var.environment
    resource    = local.prefix
  }
}
