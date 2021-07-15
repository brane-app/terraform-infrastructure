resource "aws_security_group" "ecs-node" {
  name = "${var.prefix}-ecs-node"
  tags = { "Name" : "${var.prefix}-ecs-node" }

  vpc_id = data.terraform_remote_state.network.outputs.vpc_id
}

resource "aws_security_group_rule" "service_outbound" {
  description = "Outbound to the web"

  to_port           = 0
  from_port         = 0
  protocol          = "-1"
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.ecs-node.id
}

resource "aws_security_group_rule" "service_ssh" {
  description = "Inbound SSH"

  to_port           = 22
  from_port         = 22
  protocol          = "TCP"
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.ecs-node.id
}

resource "aws_security_group_rule" "service_ephemeral_inbound" {
  description = "Outbound to the balancer"

  to_port                  = 65535
  from_port                = 32768
  protocol                 = "TCP"
  type                     = "ingress"
  source_security_group_id = aws_security_group.balancer.id
  security_group_id        = aws_security_group.ecs-node.id
}
