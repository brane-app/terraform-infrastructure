resource "aws_cloudwatch_log_group" "logs" {
  name = "${var.prefix}-ferrothorn"
  tags = { "Name" : "${var.prefix}-ferrothorn" }

  retention_in_days = var.log_retention
}
