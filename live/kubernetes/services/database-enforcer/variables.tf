variable "cluster_state_bucket" {
  description = "S3 bucket holding terraform state"
  type        = string
}

variable "cluster_state_key" {
  description = "Key in the s3 bucket holding terraform state"
  type        = string
}

variable "cluster_state_region" {
  description = "Region where the terraform state bucket lives"
  type        = string
}

variable "cluster_state_profile" {
  description = "AWS profile alias owning the state bucket"
  type        = string
}

variable "database_state_key" {
  description = "Key in the s3 bucket holding terraform state"
  type        = string
}

variable "namespace_state_key" {
  description = "Key in the s3 bucket holding terraform state"
  type        = string
}

variable "kube_state_bucket" {
  description = "S3 bucket holding terraform state"
  type        = string
}

variable "kube_state_region" {
  description = "Region where the terraform state bucket lives"
  type        = string
}

variable "kube_state_profile" {
  description = "AWS profile alias owning the state bucket"
  type        = string
}

variable "image" {
  description = "Database Enforcer image to deploy"
  type        = string
}

variable "image_tag" {
  description = "Database Enforcer image tag"
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
