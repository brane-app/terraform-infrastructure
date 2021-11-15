output "name" {
  value = kubernetes_service.metadata[0].name
}

output "port" {
  value = local.port
}
