variable "github_token" {
  description = "Github personal access token used to trigger other builds"
  type        = string
}

variable "library_name" {
  description = "Name of the library for which a repo is being created"
  type        = string
}

variable "rebuild_services" {
  description = "Collection of the names of services to trigger CI on when building"
  type        = set(string)
  default     = []
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
