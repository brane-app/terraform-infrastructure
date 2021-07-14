resource "aws_ecs_cluster" "cluster" {
  name = "${var.prefix}-services"
  tags = { "Name" : "${var.prefix}-services" }
}
