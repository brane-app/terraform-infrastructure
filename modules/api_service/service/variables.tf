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

variable "host_vpc_id" {
  description = "ID of a VPC to deploy resources in"
  type        = string
}

variable "listener_path" {
  description = "Path to listen for requests to this service on"
  type        = string
}

variable "name" {
  description = "The name of this service"
  type        = string
}

variable "security_groups" {
  description = "Collection of security groups to attach to this service"
  type        = set(string)
}

variable "service_container_port" {
  description = "Port that this container listens on for requests"
  type        = number
  default     = 80
}

variable "subnets" {
  description = "Collection of subnets that this service may be deployed in"
  type        = set(string)
}

variable "task_definition" {
  description = "ARN or family:revision of the task definition to use when deploying this service"
  type        = string
}
