resource "aws_ecs_task_definition" "definition" {
  family                   = "${var.prefix}-${var.family_name}"
  cpu                      = var.task_cpu
  memory                   = var.task_ram
  execution_role_arn       = var.execution_role_arn
  container_definitions    = module.container.json_map_encoded_list
  network_mode             = "bridge"
  requires_compatibilities = ["EC2"]

  tags = { "Name" : "${var.prefix}-${var.family_name}" }
}

module "container" {
  source                   = "cloudposse/ecs-container-definition/aws"
  version                  = var.container_module_version_pin
  readonly_root_filesystem = true
  container_image          = var.container_image
  container_name           = "${var.prefix}-${var.container_name}"
  container_cpu            = var.task_cpu
  container_memory         = var.task_ram

  secrets     = var.container_secrets
  environment = var.container_environment
}
