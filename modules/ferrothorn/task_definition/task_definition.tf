data "aws_region" "current" {}

resource "aws_ecs_task_definition" "definition" {
  family = "${var.prefix}-ferrothorn"
  tags   = { "Name" : "${var.prefix}-ferrothorn" }

  cpu                      = var.task_cpu
  memory                   = var.task_ram
  execution_role_arn       = var.execution_role_arn
  container_definitions    = module.container.json_map_encoded_list
  network_mode             = "bridge"
  requires_compatibilities = ["EC2"]
}

module "container" {
  source                   = "cloudposse/ecs-container-definition/aws"
  version                  = "~> 0"
  readonly_root_filesystem = true
  container_image          = var.container_image
  container_name           = "${var.prefix}-ferrothorn"
  container_cpu            = var.task_cpu
  container_memory         = var.task_ram

  log_configuration = {
    logDriver = "awslogs"

    options = {
      "awslogs-group"         = aws_cloudwatch_log_group.logs.name,
      "awslogs-stream-prefix" = "${var.prefix}-ferrothorn",
      "awslogs-region"        = data.aws_region.current.name,
    }
  }

  port_mappings = [
    {
      containerPort = 8000
      hostPort      = var.host_port
      protocol      = "tcp"
    }
  ]

  secrets = concat(
    [
      {
        name      = "FERROTHORN_CONNECTION",
        valueFrom = aws_ssm_parameter.connection.arn,
      }
    ],
    var.container_secrets,
  )
}
