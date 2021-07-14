resource "aws_ecs_service" "service" {
  name = "${var.prefix}-${var.service_name}"

  cluster              = var.cluster_arn
  task_definition      = var.task_definition_arn
  desired_count        = var.desired_count
  launch_type          = "ECS"
  force_new_deployment = true

  tags = { "Name" : "${var.prefix}-${var.family_name}" }

  load_balancer {
    container_name   = var.service_container_name
    container_port   = var.service_container_port
    target_group_arn = aws_lb_target_group.http.arn
  }

  network_configuration {
    assign_public_ip = false
    security_groups  = var.security_groups
    subnets          = var.subnets
  }
}
