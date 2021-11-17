variable "project_state_bucket" {
  description = "S3 bucket holding DigitalOcean project state"
  type        = string
}

variable "project_state_key" {
  description = "Key in the s3 bucket holding DigitalOcean project state"
  type        = string
}

variable "project_state_region" {
  description = "Region where the DigitalOcean project state bucket lives"
  type        = string
}

variable "project_state_profile" {
  description = "AWS profile alias owning the state bucket"
  type        = string
}

variable "region" {
  description = "DigitalOcean region to deploy resources in"
  type        = string
}

variable "cluster_version_prefix" {
  description = "Kubernetes cluster version prefix, matching a DigitalOcean optimized version"
  type        = string
}

variable "cluster_maintenance_day" {
  description = "Day when cluster maintenance may happen"
  type        = string
}

variable "cluster_maintenance_time" {
  description = "Time when cluster maintenance may happen"
  type        = string
}

variable "node_size" {
  description = "Node size to fill the cluster with"
  type        = string
}

variable "node_autoscale_min" {
  description = "Minimum desired nodes"
  type        = number
}

variable "node_autoscale_max" {
  description = "Maximum desired nodes"
  type        = number
}

variable "app" {
  description = "App being deployed"
  type        = string
}

variable "environment" {
  description = "App deployment environment"
  type        = string
}
