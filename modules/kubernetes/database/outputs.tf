output "database_address" {
  value = kubernetes_service.database.metadata[0].name
}

output "database_port" {
  value = local.database_port
}

output "database_name" {
  value = local.database_name
}

output "database_user" {
  value = local.database_user
}

output "database_password" {
  value     = random_password.database.result
  sensitive = true
}
