variable "github_personal_token" {
  description = "Github personal access token to auth with"
  type        = string
}

variable "services" {
  description = "List of services to create"
  type        = set(string)
  default     = []
}
