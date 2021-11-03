variable "database_address" {
  description = "Address of the brane database"
  type        = string
}

variable "database_port" {
  description = "Port of the brane database"
  type        = number
}

variable "database_name" {
  description = "Name of the brane database"
  type        = string
}

variable "database_user" {
  description = "User to access the database with"
  type        = string
}

variable "database_password" {
  description = "Password locking the database user account"
  type        = string
  sensitive   = true
}

variable "ferrothorn_host" {
  description = "URL pointing towards a ferrothorn API"
  type        = string
}

variable "ferrothorn_secret" {
  description = "Ferrothorn api secret key"
  type        = string
  sensitive   = true
  default     = ""
}

variable "service" {
  description = "Name of the service to deploy"
  type        = string
}

variable "service_image" {
  description = "Name of the image to run for this service"
  type        = string
  default     = "latest"
}

variable "service_image_label" {
  description = "Label of the image to run for this service"
  type        = string
}

variable "service_path_prefix" {
  description = "Prefix to route with"
  type        = string
  default     = ""
}

variable "service_replicas" {
  description = "Number of service replicas to keep alive"
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
