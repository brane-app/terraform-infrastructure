resource "aws_ssm_parameter" "username" {
  name  = "/${var.prefix}/service/database/username"
  value = var.database_username
  type  = "String"
}

resource "aws_ssm_parameter" "password" {
  name  = "/${var.prefix}/service/database/password"
  value = var.database_password
  type  = "SecureString"
}

resource "aws_ssm_parameter" "endpoint" {
  name  = "/${var.prefix}/service/database/endpoint"
  value = aws_db_instance.database.endpoint
  type  = "String"
}

resource "aws_ssm_parameter" "DATABASE" {
  name  = "/${var.prefix}/service/database/DATABASE"
  value = "services"
  type  = "String"
}
