resource "aws_lb" "balancer" {
  internal           = false
  load_balancer_type = "application"
  name               = "${var.prefix}-services"
  security_groups    = [aws_security_group.balancer.id]
  subnets            = data.terraform_remote_state.network.outputs.subnet_ids
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.balancer.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "application/json"
      message_body = "{\"error\": \"not_found\"}"
      status_code  = "404"
    }
  }
}
