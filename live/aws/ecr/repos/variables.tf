variable "services" {
  description = "Collection of services to make repos for"
  type        = set(string)
  default     = []
}

variable "app" {
  description = "App being deployed"
  type        = string
}

variable "environment" {
  description = "App deployment environment"
  type        = string
}
