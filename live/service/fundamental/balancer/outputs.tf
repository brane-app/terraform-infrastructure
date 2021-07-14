output "balancer_arn" {
  value = aws_lb.balancer.arn
}

output "http_listener_arn" {
  value = aws_lb_listener.http.arn
}
