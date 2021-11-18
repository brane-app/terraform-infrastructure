variable "cluster_state_key" {
  description = "Kubernetes cluster state key"
  type        = string
}

variable "cluster_state_bucket" {
  description = "S3 bucket holding terraform state"
  type        = string
}

variable "cluster_state_region" {
  description = "Region where the state bucket lives"
  type        = string
}

variable "cluster_state_profile" {
  description = "AWS profile alias owning the state bucket"
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


variable "app" {
  description = "Application we're deploying resources for"
  type        = string
}

variable "environment" {
  description = "The name of an environment to deploy things into"
  type        = string
}
