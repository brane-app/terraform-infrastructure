resource "aws_cloudwatch_log_group" "logs" {
  name = "${var.prefix}-service-${var.name}"
  tags = { "Name" : "${var.prefix}-service-${var.name}" }

  retention_in_days = var.log_retention
}
