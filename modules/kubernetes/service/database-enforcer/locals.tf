locals {
  database_connection = "mysql://${var.database_user}:${var.database_password}@${var.database_address}:${var.database_port}/${var.database_name}"
  prefix              = "${var.app}-${var.environment}-database-enforcer"

  labels = {
    app         = var.app
    environment = var.environment
    resource    = local.prefix
  }
}
