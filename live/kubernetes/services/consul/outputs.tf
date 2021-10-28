output "consul_address" {
  value = kubernetes_service.consul.metadata[0].name
}
