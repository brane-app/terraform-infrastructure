variable "database_image" {
  description = "Database image to deploy"
  type        = string
  default     = "mariadb"
}

variable "database_image_tag" {
  description = "Tag of the database image"
  type        = string
  default     = "latest"
}

variable "name" {
  description = "Name of this database"
  type        = string
}

variable "replicas" {
  description = "Number of replicas to launch"
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
