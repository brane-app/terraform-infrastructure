locals {
  database_connection = "mysql://${var.database_username}:${var.database_password}@${var.database_endpoint}/${var.database_name}"
}

resource "aws_ssm_parameter" "connection" {
  name  = "/${var.prefix}/service/${var.name}/DATABASE_CONNECTION"
  type  = "SecureString"
  value = local.database_connection
}
