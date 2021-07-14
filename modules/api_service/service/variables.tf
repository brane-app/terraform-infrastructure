variable "balancer_arn" {
  description = "ARN of the load balancer infront of this service"
  type        = string
}

variable "cluster_arn" {
  description = "ARN of the cluster to deploy this to"
  type        = string
}

variable "desired_count" {
  description = "Number of services to run"
  type        = number
  default     = 1
}

variable "health_check_path" {
  description = "Path to make requests to when doing health checks"
  type        = string
  default     = "/"
}

variable "health_check_matcher" {
  description = "Health check matchers to interpret as healthy"
  type        = string
}


variable "host_vpc_id" {
  description = "ID of a VPC to deploy resources in"
  type        = string
}

variable "listener_arn" {
  description = "ARN of the load balance listener to attach to"
  type        = string
}

variable "listener_paths" {
  description = "Path to listen for requests to this service on"
  type        = set(string)
}

variable "name" {
  description = "The name of this service"
  type        = string
}

variable "service_container_port" {
  description = "Port that this container listens on for requests"
  type        = number
  default     = 80
}

variable "target_group_port" {
  description = "Port that the target group should listen to"
  type        = number
  default     = 80
}

variable "task_definition" {
  description = "ARN or family:revision of the task definition to use when deploying this service"
  type        = string
}
