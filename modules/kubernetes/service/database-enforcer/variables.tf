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

variable "image" {
  description = "Database Enforcer image to deploy"
  type        = string
}

variable "image_tag" {
  description = "Database Enforcer image tag"
  type        = string
}

variable "replicas" {
  description = "Pod replica count"
  type        = string
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
