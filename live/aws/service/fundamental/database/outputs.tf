output "username_services" {
  value = var.database_username_services
}

output "password_services" {
  value     = var.database_password_services
  sensitive = true
}

output "endpoint_services" {
  value = aws_db_instance.services.endpoint
}

output "database_services" {
  value = var.database_name_services
}

output "username_ferrothorn" {
  value = var.database_username_ferrothorn
}

output "password_ferrothorn" {
  value     = var.database_password_ferrothorn
  sensitive = true
}

output "endpoint_ferrothorn" {
  value = aws_db_instance.ferrothorn.endpoint
}

output "database_ferrothorn" {
  value = var.database_name_ferrothorn
}
