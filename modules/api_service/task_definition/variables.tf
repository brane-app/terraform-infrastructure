variable "container_environment" {
  description = "List of container environment variables"
  type        = list(object({ name = string, value = string }))
}

variable "container_image" {
  description = "Docker image that this container should use"
  type        = string
}

variable "container_module_version_pin" {
  description = "Version to pin the CloudPosse container module at"
  type        = string
  default     = "~> 0"
}

variable "container_port" {
  description = "Port where http stuff is served, inside the container"
  type        = number
  default     = 8000
}

variable "container_secrets" {
  description = "Liust of container environment secrets"
  type        = list(object)
}

variable "execution_role_arn" {
  description = "ARN of an execution role to attach to instances of this task"
  type        = string
}

variable "log_retention" {
  description = "Time in days to retain cloudwatch logs"
  type        = number
  default     = 7
}

variable "name" {
  description = "The name of this service"
  type        = string
}

variable "task_cpu" {
  description = "CPU allowance for instances of this task"
  type        = number
}

variable "task_ram" {
  description = "RAM allowance for instances of this task"
  type        = number
}
