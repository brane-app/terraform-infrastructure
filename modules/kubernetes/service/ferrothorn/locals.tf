locals {
  database_address = kubernetes_service.database.metadata[0].name
  database_port    = 3306

  database_name       = "ferrothorn"
  database_user       = "ferrothorn"
  database_connection = "${local.database_user}:${random_password.database.result}@tcp(${local.database_address}:${local.database_port})/${local.database_name}"

  prefix = "${var.app}-${var.environment}"

  labels = {
    app         = var.app
    environment = var.environment
  }

  labels_database = merge(
    { resource = "${local.prefix}-ferrothorn-database" },
    local.labels,
  )

  labels_service = merge(
    { resource = "${local.prefix}-ferrothorn-service" },
    local.labels,
  )
}
