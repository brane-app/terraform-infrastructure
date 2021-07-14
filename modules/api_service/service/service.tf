resource "aws_ecs_service" "service" {
  name = "${var.prefix}-service-${var.name}"
  tags = { "Name" : "${var.prefix}-service-${var.name}" }

  cluster              = var.cluster_arn
  task_definition      = var.task_definition
  desired_count        = var.desired_count
  launch_type          = "ECS"
  force_new_deployment = true

  load_balancer {
    container_name   = "${var.prefix}-service-${var.name}"
    container_port   = var.service_container_port
    target_group_arn = aws_lb_target_group.http.arn
  }

  network_configuration {
    assign_public_ip = false
    security_groups  = var.security_groups
    subnets          = var.subnets
  }
}
