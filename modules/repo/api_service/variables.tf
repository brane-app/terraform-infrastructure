variable "dockerhub_token" {
  description = "Dockerhub private token to put into repository secrets"
  type        = string
  sensitive   = true
}

variable "repo_description" {
  description = "A brief description of the service repo"
  type        = string
  default     = null
}

variable "repo_license" {
  description = "License to give the repo"
  type        = string
  default     = "agpl-3.0"
}

variable "repo_visibility" {
  description = "Visibility of the service repo"
  type        = string
  default     = "public"
}

variable "service_name" {
  description = "Name of the service for which a repo is being created"
  type        = string
}
