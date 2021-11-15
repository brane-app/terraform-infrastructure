variable "github_personal_token" {
  description = "Github personal access token to auth with"
  type        = string
}

variable "libraries" {
  description = "List of libraries to create"
  type        = set(string)
  default     = []
}

variable "rebuild_services" {
  description = "Collection of the names of services to trigger CI on when building"
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
