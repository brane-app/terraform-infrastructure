output "ferrothorn_address" {
  value = kubernetes_service.ferrothorn.metadata[0].name
}

output "ferrothorn_port" {
  value = kubernetes_service.ferrothorn.spec[0].port[0].port
}

output "ferrothorn_secret" {
  value     = random_password.ferrothorn.result
  sensitive = true
}
