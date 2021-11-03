output "ferrothorn_address" {
  value = kubernetes_service.ferrothorn.metadata[0].name
}

output "ferrothorn_secret" {
  value     = random_password.ferrothorn.result
  sensitive = true
}
