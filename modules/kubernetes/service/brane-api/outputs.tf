output "service" {
  value = var.service
}

output "address" {
  value = kubernetes_service.service.metadata[0].name
}

output "port" {
  value = local.port
}
