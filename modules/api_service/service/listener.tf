resource "aws_lb_target_group" "http" {
  name = "${var.prefix}-${var.name}"
  tags = { "Name" : "${var.prefix}-${var.name}" }

  port        = var.service_container_port
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.host_vpc_id

  health_check {
    path    = var.health_check_path
    matcher = var.health_check_matcher
  }
}

resource "aws_lb_listener_rule" "rule" {
  listener_arn = var.balancer_arn

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.http.arn
  }

  condition {
    path_pattern {
      values = var.listener_path
    }
  }
}
