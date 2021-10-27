locals {
  database_connection = "${var.database_username}:${var.database_password}@tcp(${var.database_endpoint})/${var.database_name}"
}

resource "aws_ssm_parameter" "connection" {
  name  = "/${var.prefix}/service/${var.name}/FERROTHORN_CONNECTION"
  type  = "SecureString"
  value = local.database_connection
}
