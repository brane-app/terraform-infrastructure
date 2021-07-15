resource "aws_security_group" "database_ingress" {
  name = "${var.prefix}-database-ingress"
  tags = { "Name" : "${var.prefix}-database-ingress" }

  vpc_id = data.terraform_remote_state.network.outputs.vpc_id
}
