resource "aws_security_group" "balancer" {
  name        = "${var.prefix}-services-balancer"
  description = "Allow traffic to ${var.prefix} services"
  vpc_id      = data.terraform_remote_state.network.outputs.vpc_id
}

resource "aws_security_group_rule" "http_inbound" {
  cidr_blocks       = ["0.0.0.0/0"]
  description       = "Allow inbound to balenced services via HTTP"
  protocol          = "tcp"
  from_port         = aws_lb_listener.http.port
  to_port           = aws_lb_listener.http.port
  security_group_id = aws_security_group.balancer.id
  type              = "ingress"
}


resource "aws_security_group_rule" "outbond" {
  cidr_blocks       = ["0.0.0.0/0"]
  description       = "Allow outbound traffic from the ALB"
  protocol          = "-1"
  from_port         = 0
  to_port           = 0
  type              = "egress"
  security_group_id = aws_security_group.balancer.id
}
