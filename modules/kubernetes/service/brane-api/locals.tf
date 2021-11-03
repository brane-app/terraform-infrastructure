locals {
  database_connection = "${var.database_user}:${var.database_password}@tcp(${var.database_address}:${var.database_port})/${var.database_name}"
  prefix              = "${var.app}-${var.environment}-brane-api"

  labels = {
    app         = var.app,
    environment = var.environment,
    resource    = local.prefix,
  }
}