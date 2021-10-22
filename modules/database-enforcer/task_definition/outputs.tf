output "task_definition_arn" {
  value = aws_ecs_task_definition.definition.arn
}

output "task_definition_family" {
  value = aws_ecs_task_definition.definition.family
}
