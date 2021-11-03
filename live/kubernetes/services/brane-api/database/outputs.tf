output "address" {
  value = module.database.database_address
}

output "port" {
  value = module.database.database_port
}

output "name" {
  value = module.database.database_name
}

output "user" {
  value = module.database.database_user
}

output "password" {
  value     = module.database.database_password
  sensitive = true
}
