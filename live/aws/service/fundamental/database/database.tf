resource "aws_db_subnet_group" "database" {
  name       = "${var.prefix}-database"
  subnet_ids = data.terraform_remote_state.cluster.outputs.cluster_instance_subnet
}

resource "aws_db_instance" "services" {
  allocated_storage   = var.database_storage_allocated
  engine              = var.database_engine
  instance_class      = var.database_instance
  username            = var.database_username_services
  name                = var.database_name_services
  password            = var.database_password_services
  skip_final_snapshot = var.database_skip_final_snapshot

  vpc_security_group_ids = [aws_security_group.database.id]
  db_subnet_group_name   = aws_db_subnet_group.database.name
}

resource "aws_db_instance" "ferrothorn" {
  allocated_storage   = var.database_storage_allocated
  engine              = var.database_engine
  instance_class      = var.database_instance
  username            = var.database_username_ferrothorn
  name                = var.database_name_ferrothorn
  password            = var.database_password_ferrothorn
  skip_final_snapshot = var.database_skip_final_snapshot

  vpc_security_group_ids = [aws_security_group.database.id]
  db_subnet_group_name   = aws_db_subnet_group.database.name
}
