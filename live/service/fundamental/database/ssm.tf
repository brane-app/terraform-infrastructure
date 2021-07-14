resource "aws_ssm_parameter" "username" {
  name  = "/${var.prefix}/service/fundamental/database/username"
  value = var.database_username
  type  = "String"
}

resource "aws_ssm_parameter" "password" {
  name  = "/${var.prefix}/service/fundamental/database/password"
  value = var.database_password
  type  = "SecureString"
}

resource "aws_ssm_parameter" "endpoint" {
  name  = "/${var.prefix}/service/fundamental/database/endpoint"
  value = aws_db_instance.database.endpoint
  type  = "String"
}

resource "aws_ssm_parameter" "DATABASE" {
  name  = "/${var.prefix}/service/fundamental/database/DATABASE"
  value = "services"
  type  = "String"
}
