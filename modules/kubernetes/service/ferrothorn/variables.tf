variable "database_image" {
  description = "Mariadb compatible database image to use"
  type        = string
  default     = "mariadb"
}

variable "database_image_tag" {
  description = "Tag to use with database_image"
  type        = string
  default     = "latest"
}

variable "ferrothorn_image" {
  description = "Ferrothorn image to use"
  type        = string
  default     = "gastrodon/ferrothorn"
}

variable "ferrothorn_image_tag" {
  description = "Tag to use with ferrothorn_image"
  type        = string
  default     = "latest"
}

variable "ferrothorn_replicas" {
  description = "Number of ferrothorn replicas to launch"
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

variable "namespace" {
  description = "Namespace to deploy resources into"
  type        = string
}
