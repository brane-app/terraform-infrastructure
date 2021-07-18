variable "aws_access_key_id" {
  description = "AWS access key id of a user who may push ECR repos"
  type        = string
  sensitive   = true
}

variable "aws_region" {
  description = "Where are we?"
  type        = string
  default     = "us-east-1"
}

variable "aws_secret_access_key" {
  description = "AWS secret key of a user who may push ECR repos"
  type        = string
  sensitive   = true
}

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
