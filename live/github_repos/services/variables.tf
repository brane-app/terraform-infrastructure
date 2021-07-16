variable "dockerhub_token" {
  description = "Dockerhub private token to put into repository secrets"
  type        = string
  sensitive   = true
}

variable "dockerhub_username" {
  description = "Dockerhub private username to put into repository secrets"
  type        = string
}

variable "github_personal_token" {
  description = "Github personal access token to auth with"
  type        = string
}

variable "services" {
  description = "List of services to create"
  type        = set(string)
  default     = []
}
