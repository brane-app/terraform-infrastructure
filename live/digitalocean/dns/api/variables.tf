variable "project_state_key" {
  description = "Key in the s3 bucket holding state"
  type        = string
}

variable "root_state_key" {
  description = "Key in the s3 bucket holding state"
  type        = string
}

variable "ocean_state_bucket" {
  description = "S3 bucket holding state"
  type        = string
}

variable "ocean_state_bucket_live" {
  description = "S3 bucket holding live state"
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

variable "traefik_state_key" {
  description = "Key in the s3 bucket holding state"
  type        = string
}

variable "traefik_state_bucket" {
  description = "S3 bucket holding state"
  type        = string
}

variable "traefik_state_region" {
  description = "Region where the state bucket lives"
  type        = string
}

variable "traefik_state_profile" {
  description = "AWS profile alias owning the state bucket"
  type        = string
}

variable "domain_prefix" {
  description = "Prefix on the domain name that should route to the project API"
  type        = set(string)
}

variable "app" {
  description = "App being deployed"
  type        = string
}

variable "environment" {
  description = "App deployment environment"
  type        = string
}
