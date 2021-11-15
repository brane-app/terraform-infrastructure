variable "dockerhub_token" {
  description = "Dockerhub private token to put into repository secrets"
  type        = string
  sensitive   = true
}

variable "dockerhub_username" {
  description = "Dockerhub private username to put into repository secrets"
  type        = string
}

variable "ecr_namespace" {
  description = "ECR public repo namespace"
  type        = string
}

variable "ecr_state_bucket" {
  description = "S3 bucket holding ecr repo state"
  type        = string
}

variable "ecr_state_key" {
  description = "Key in the s3 bucket holding ecr repo state"
  type        = string
}

variable "ecr_state_region" {
  description = "Region where the ecr state bucket lives"
  type        = string
}

variable "ecr_state_profile" {
  description = "AWS profile alias owning the state bucket"
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

variable "app" {
  description = "App being deployed"
  type        = string
}

variable "environment" {
  description = "App deployment environment"
  type        = string
}
