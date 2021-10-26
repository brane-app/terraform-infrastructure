output "balancer_arn" {
  value = aws_lb.balancer.arn
}

output "balancer_dns_name" {
  value = aws_lb.balancer.dns_name
}

output "balancer_zone_id" {
  value = aws_lb.balancer.zone_id
}

output "http_listener_arn" {
  value = aws_lb_listener.http.arn
}
