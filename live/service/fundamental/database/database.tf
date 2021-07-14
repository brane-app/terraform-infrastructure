resource "aws_db_subnet_group" "database" {
  name       = "${var.prefix}-services"
  subnet_ids = data.terraform_remote_state.cluster.outputs.cluster_instance_subnet
}

resource "aws_db_instance" "database" {
  allocated_storage      = var.database_storage_allocated
  engine                 = var.database_engine
  instance_class         = var.database_instance
  name                   = "services"
  username               = var.database_username
  password               = var.database_password
  skip_final_snapshot    = var.database_skip_final_snapshot
  vpc_security_group_ids = [aws_security_group.database.id]
  db_subnet_group_name   = aws_db_subnet_group.database.name
}
