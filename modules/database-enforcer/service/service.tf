resource "aws_ecs_service" "service" {
  name = "${var.prefix}-service-${var.name}"
  tags = { "Name" : "${var.prefix}-service-${var.name}" }

  cluster              = var.cluster_arn
  task_definition      = var.task_definition
  desired_count        = var.desired_count
  launch_type          = "EC2"
  force_new_deployment = true
}
