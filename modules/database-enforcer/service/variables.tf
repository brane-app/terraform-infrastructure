variable "cluster_arn" {
  description = "ARN of the cluster to deploy this to"
  type        = string
}

variable "desired_count" {
  description = "Number of services to run"
  type        = number
  default     = 1
}

variable "host_vpc_id" {
  description = "ID of a VPC to deploy resources in"
  type        = string
}

variable "name" {
  description = "The name of this service"
  type        = string
}

variable "task_definition" {
  description = "ARN or family:revision of the task definition to use when deploying this service"
  type        = string
}
