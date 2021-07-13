variable "cluster_arn" {
  description = "" // TODO
  type        = string

}

variable "desired_count" {
  description = "" // TODO
  type        = number
}

variable "security_groups" {
  description = "" // TODO
  type        = set(string)
}

variable "service_container_name" {
  description = "" // TODO
  type        = string
}

variable "service_container_port" {
  description = "" // TODO
  type        = number
}

variable "service_name" {
  description = "" // TODO
  type        = string
}

variable "subnets" {
  description = "" // TODO
  type        = set(string)
}

variable "target_group_arn" {
  description = "" // TODO
  type        = string
}

variable "task_definition_arn" {
  description = "" // TODO
  type        = string
}
