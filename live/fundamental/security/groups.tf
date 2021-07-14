resource "aws_security_group" "balancer" {
  name = "${var.prefix}-services-balancer"
  tags = { "Name" : "${var.prefix}-services-balancer" }

  vpc_id = data.terraform_remote_state.network.outputs.vpc_id
}

resource "aws_security_group" "database_ingress" {
  name = "${var.prefix}-database-ingress"
  tags = { "Name" : "${var.prefix}-database-ingress" }

  vpc_id = data.terraform_remote_state.network.outputs.vpc_id
}

resource "aws_security_group" "service" {
  name = "${var.prefix}-service"
  tags = { "Name" : "${var.prefix}-service" }

  vpc_id = data.terraform_remote_state.network.outputs.vpc_id
}

resource "aws_security_group_rule" "service_outbound" {
  description = "Outbound to the web"

  to_port           = 0
  from_port         = 0
  protocol          = "-1"
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.service.id
}

resource "aws_security_group_rule" "service_ssh" {
  description = "Inbound SSH"

  to_port           = 22
  from_port         = 22
  protocol          = "TCP"
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.service.id
}

resource "aws_security_group_rule" "service_ephemeral_inbound" {
  description = "Outbound to the balancer"

  to_port                  = 65535
  from_port                = 32768
  protocol                 = "TCP"
  type                     = "ingress"
  source_security_group_id = aws_security_group.balancer.id
  security_group_id        = aws_security_group.service.id
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
  source_security_group_id = aws_security_group.service.id
  security_group_id        = aws_security_group.balancer.id
}
