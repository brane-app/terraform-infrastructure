resource "aws_security_group" "balancer" {
  name = "${var.prefix}-services-balancer"
  tags = { "Name" : "${var.prefix}-services-balancer" }

  vpc_id = data.terraform_remote_state.network.outputs.vpc_id
}

resource "aws_security_group_rule" "balancer_http_inbound" {
  description = "HTTP inbound"

  to_port           = 80
  from_port         = 80
  protocol          = "tcp"
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.balancer.id
}


resource "aws_security_group_rule" "outbond" {
  description = "Outbound to ECS nodes"

  to_port                  = 65535
  from_port                = 32768
  protocol                 = "TCP"
  type                     = "egress"
  source_security_group_id = aws_security_group.ecs-node.id
  security_group_id        = aws_security_group.balancer.id
}
