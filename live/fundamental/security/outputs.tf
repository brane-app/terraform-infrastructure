output "group_balancer_id" {
  value = aws_security_group.balancer.id
}

output "group_database_ingress_id" {
  value = aws_security_group.database_ingress.id
}

output "group_ecs_node_id" {
  value = aws_security_group.ecs-node.id
}
