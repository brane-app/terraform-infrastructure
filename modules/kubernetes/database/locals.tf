locals {
  prefix = "${var.app}-${var.environment}-database"

  database_port = 3306
  database_name = var.name
  database_user = var.name

  labels = {
    app         = var.app,
    environment = var.environment,
    resource    = "${local.prefix}",
  }
}
