variable "acme_email_address" {
  description = "Email address to create an acme registration with"
  type        = string
}

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

variable "dns_state_bucket" {
  description = "S3 bucket holding DigitalOcean dns state"
  type        = string
}

variable "dns_state_key" {
  description = "Key in the s3 bucket holding DigitalOcean dns state"
  type        = string
}

variable "dns_state_region" {
  description = "Region where the DigitalOcean dns state bucket lives"
  type        = string
}

variable "dns_state_profile" {
  description = "AWS profile alias owning the state bucket"
  type        = string
}

variable "ssl_dns_provider" {
  description = "DNS provider for ssl challenges"
  type        = string
}

variable "ssl_dns_config" {
  description = "DNS provider config"
  type        = map(string)
}

variable "traefik_image" {
  description = "Traefik docker image to deploy"
  type        = string
}

variable "traefik_image_tag" {
  description = "Traefik docker image tag"
  type        = string
}

variable "traefik_replicas" {
  description = "Number of traefik instances to bring up"
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
