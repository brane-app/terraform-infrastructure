output "task_definition_arns" {
  value = { for key, value in module.task_definition : key => value.task_definition_arn }
}

output "task_definition_database_enforcer_arn" {
  value = module.database_enforcer.task_definition_arn
}

output "task_definition_families" {
  value = { for key, value in module.task_definition : key => value.task_definition_family }
}
