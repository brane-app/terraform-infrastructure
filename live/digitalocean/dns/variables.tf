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

variable "domain_name" {
  description = "Domain name to create records for"
  type        = string
}

variable "domain_target_mx" {
  description = "MX records to include"
  type        = set(string)
  default     = []
}

variable "domain_target_txt" {
  description = "TXT records to include"
  type        = set(string)
  default     = []
}

variable "domain_prefix_api" {
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
