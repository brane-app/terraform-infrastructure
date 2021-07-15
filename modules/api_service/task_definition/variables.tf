variable "container_environment" {
  description = "List of container environment variables"
  type        = list(object({ name = string, value = string }))
  default     = []
}

variable "container_image" {
  description = "Docker image that this container should use"
  type        = string
}

variable "container_port" {
  description = "Port where http stuff is served, inside the container"
  type        = number
  default     = 8000
}

variable "container_secrets" {
  description = "Liust of container environment secrets"
  type        = list(object({ name = string, valueFrom = string }))
  default     = []
}

variable "database_username" {
  description = "Username of the database to connect to"
  type        = string
}

variable "database_password" {
  description = "Password of the database to connect to"
  type        = string
}

variable "database_endpoint" {
  description = "Endpoint of the database to connect to"
  type        = string
}

variable "database_name" {
  description = "Name of the database to connect to"
  type        = string
}

variable "execution_role_arn" {
  description = "ARN of an execution role to attach to instances of this task"
  type        = string
}

variable "host_port" {
  description = "Port to expose to the host, forwarding to container_port"
  type        = number
  default     = 0
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

variable "path_prefix" {
  description = "HTTP path prefix that the service should consider when handling requests received"
  type        = string
  default     = ""
}

variable "task_cpu" {
  description = "CPU allowance for instances of this task"
  type        = number
  default     = 128
}

variable "task_ram" {
  description = "RAM allowance for instances of this task"
  type        = number
  default     = 64
}
