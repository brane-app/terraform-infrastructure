variable "app" {
  description = "Application we're deploying resources for"
  type        = string
}

variable "environment" {
  description = "The name of an environment to deploy things into"
  type        = string
}
