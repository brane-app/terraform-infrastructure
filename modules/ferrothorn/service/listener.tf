resource "aws_lb_target_group" "http" {
  name = "${var.prefix}-ferrothorn"
  tags = { "Name" : "${var.prefix}-ferrothorn" }

  port     = var.target_group_port
  protocol = "HTTP"
  vpc_id   = var.host_vpc_id

  health_check {
    path    = var.health_check_path
    matcher = var.health_check_matcher
  }
}

resource "aws_lb_listener_rule" "rule" {
  listener_arn = var.listener_arn

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.http.arn
  }

  condition {
    path_pattern {
      values = ["", "*"]
    }
  }
}
