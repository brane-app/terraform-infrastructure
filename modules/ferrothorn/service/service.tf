resource "aws_ecs_service" "service" {
  name = "${var.prefix}-ferrothorn"
  tags = { "Name" : "${var.prefix}-ferrothorn" }

  cluster              = var.cluster_arn
  task_definition      = var.task_definition
  desired_count        = var.desired_count
  launch_type          = "EC2"
  force_new_deployment = true

  load_balancer {
    container_name   = "${var.prefix}-ferrothorn"
    container_port   = 8000
    target_group_arn = aws_lb_target_group.http.arn
  }
}
