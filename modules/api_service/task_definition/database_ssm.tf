locals {
  database_connection = "${var.database_username}:${var.database_password}@tcp(${var.database_endpoint})/${var.database_name}"
}

resource "aws_ssm_parameter" "connection" {
  name  = "/${var.prefix}/service/${var.name}/DATABASE_CONNECTION"
  type  = "SecretString"
  value = local.database_connection
}
