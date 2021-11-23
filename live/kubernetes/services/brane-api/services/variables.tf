variable "cluster_state_key" {
  description = "Kubernetes cluster state key"
  type        = string
}

variable "dns_state_key" {
  description = "Kubernetes cluster state key"
  type        = string
}

variable "ocean_state_bucket" {
  description = "S3 bucket holding terraform state"
  type        = string
}

variable "ocean_state_region" {
  description = "Region where the state bucket lives"
  type        = string
}

variable "ocean_state_profile" {
  description = "AWS profile alias owning the state bucket"
  type        = string
}

variable "database_state_key" {
  description = "Database service state key"
  type        = string
}

variable "ferrothorn_state_key" {
  description = "Ferrothorn service state key"
  type        = string
}

variable "namespace_state_key" {
  description = "Namespace state key"
  type        = string
}

variable "kube_state_bucket" {
  description = "S3 bucket holding terraform state"
  type        = string
}

variable "kube_state_region" {
  description = "Region where the state bucket lives"
  type        = string
}

variable "kube_state_profile" {
  description = "AWS profile alias owning the state bucket"
  type        = string
}

variable "image_namespace" {
  description = "Namespace to prefix image names with"
  type        = string
}

variable "image_tag" {
  description = "Microservice image tag to deploy"
  type        = string
}

variable "ferrothorn_mask_prefix" {
  description = "Prefix pointing at the ferrothorn dns"
  type        = string
}

variable "services" {
  description = "A collection of servic definitions to deploy"
  type        = any
}

variable "app" {
  description = "Application we're deploying resources for"
  type        = string
}

variable "environment" {
  description = "The name of an environment to deploy things into"
  type        = string
}
