resource "aws_security_group" "database_ingress" {
  name   = "${var.prefix}-database-ingress"
  vpc_id = data.terraform_remote_state.network.outputs.vpc_id
}

resource "aws_security_group" "service" {
  name   = "${var.prefix}-service"
  vpc_id = data.terraform_remote_state.network.outputs.vpc_id
}

resource "aws_security_group_rule" "service_outbound" {
  to_port           = 0
  from_port         = 0
  protocol          = "-1"
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.service.id
}

resource "aws_security_group_rule" "service_ssh" {
  to_port           = 22
  from_port         = 22
  protocol          = "TCP"
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.service.id
}
