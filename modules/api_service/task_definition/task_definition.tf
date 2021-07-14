data "aws_regtion" "current" {}

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

  log_configuration = {
    logDriver = "awslogs"

    options = {
      "awslogs-group"         = aws_cloudwatch_log_group.logs.name,
      "awslogs-stream-prefix" = "${var.prefix}-service-${var.name}",
      "awslogs-region"        = data.aws_regtion.current.name,
    }
  }

  port_mappings = [
    {
      containerPort = var.container_port
      hostPort      = 80
      protocol      = "tcp"
    }
  ]

  environment = var.container_environment
  secrets = concat(
    [
      {
        name      = "DATABASE_CONNECTION",
        valueFrom = aws_ssm_parameter.connection.arn,
      }
    ],
    var.container_secrets,
  )
}
