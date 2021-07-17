output "username" {
  value = var.database_username
}

output "password" {
  value     = var.database_password
  sensitive = true
}

output "endpoint" {
  value = aws_db_instance.database.endpoint
}

output "database" {
  value = "services"
}
