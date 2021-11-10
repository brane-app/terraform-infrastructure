variable "image" {
  description = "Traefik image to use"
  type        = string
}

variable "image_tag" {
  description = "Traefik image tag"
  type        = string
}

variable "replicas" {
  description = "Number of replica containers to run"
  type        = number
  default     = 1
}

variable "app" {
  description = "Name of the app resources are being deployed for"
  type        = string
}

variable "environment" {
  description = "Name of the environment to deploy resources in"
  type        = string
}
