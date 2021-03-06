variable "acme_state_key" {
  description = "Key in the s3 bucket holding acme state"
  type        = string
}

variable "acme_state_bucket" {
  description = "S3 bucket holding acme state"
  type        = string
}

variable "acme_state_region" {
  description = "Region where the acme state bucket lives"
  type        = string
}

variable "acme_state_profile" {
  description = "AWS profile alias owning the acme state bucket"
  type        = string
}

variable "dns_state_key" {
  description = "Key in the s3 bucket holding state"
  type        = string
}

variable "dns_state_bucket" {
  description = "S3 bucket holding state"
  type        = string
}

variable "dns_state_region" {
  description = "Region where the state bucket lives"
  type        = string
}

variable "dns_state_profile" {
  description = "AWS profile alias owning the state bucket"
  type        = string
}

variable "cluster_state_key" {
  description = "Key in the s3 bucket holding kubernetes cluster state"
  type        = string
}

variable "cluster_state_bucket" {
  description = "S3 bucket holding kubernetes cluster state"
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

variable "namespace_state_key" {
  description = "Key in the s3 bucket holding state"
  type        = string
}

variable "services_state_key" {
  description = "Key in the s3 bucket holding state"
  type        = string
}

variable "ferrothorn_state_key" {
  description = "Key in the s3 bucket holding state"
  type        = string
}

variable "kube_state_bucket" {
  description = "S3 bucket holding state"
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

variable "prefix_api" {
  description = "prefix to route the api"
  type        = set(string)
}
variable "prefix_file" {
  description = "prefix to route ferrothorn"
  type        = string
}

variable "app" {
  description = "Name of the app resources are being deployed for"
  type        = string
}

variable "environment" {
  description = "The name of an environment to deploy things into"
  type        = string
}
