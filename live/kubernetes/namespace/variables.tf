variable "cluster_state_bucket" {
  description = "S3 bucket holding kubernetes cluster state"
  type        = string
}

variable "cluster_state_key" {
  description = "Key in the s3 bucket holding kubernetes cluster state"
  type        = string
}

variable "cluster_state_region" {
  description = "Region where the kubernetes cluster state bucket lives"
  type        = string
}

variable "cluster_state_profile" {
  description = "AWS profile alias owning the state bucket"
  type        = string
}

variable "namespace_name" {
  description = "Name of the namespace where all Brane resources live"
  type        = string
}
