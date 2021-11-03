output "address" {
  value = kubernetes_service.consul.metadata[0].name
}

output "port_rcp_tcp" {
  value = local.port_rcp_tcp
}

output "port_rcp_udp" {
  value = local.port_rcp_udp
}

output "port_serf_tcp" {
  value = local.port_serf_tcp
}

output "port_http_tcp" {
  value = local.port_http_tcp
}

output "port_dns_tcp" {
  value = local.port_dns_tcp
}

output "port_dns_udp" {
  value = local.port_dns_udp
}
