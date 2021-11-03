variable "image" {
  description = "Database Enforcer image to deploy"
  type        = string
}

variable "image_tag" {
  description = "Database Enforcer image tag"
  type        = string
}

variable "app" {
  description = "Application we're deploying resources for"
  type        = string
}

variable "environment" {
  description = "The name of an environment to deploy things into"
  type        = string
}
