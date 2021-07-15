variable "github_personal_token" {
  description = "Github personal access token to auth with"
  type        = string
}

variable "libraries" {
  description = "List of libraries to create"
  type        = set(string)
  default     = []
}
