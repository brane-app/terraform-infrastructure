variable "database_engine" {
  description = "Database engine to use"
  type        = string
  default     = "mariadb"
}

variable "database_instance" {
  description = "Database instance type"
  type        = string
  default     = "db.t3.micro"
}

variable "database_name_services" {
  description = "Services database name"
  type        = string
}

variable "database_name_ferrothorn" {
  description = "Ferrothorn database name"
  type        = string
}

variable "database_password_services" {
  description = "Services database user password"
  type        = string
  sensitive   = true
}

variable "database_password_ferrothorn" {
  description = "Ferrothorn database user password"
  type        = string
  sensitive   = true
}

variable "database_skip_final_snapshot" {
  description = "Skip the final database snapshot taken before destruction?"
  type        = bool
  default     = true
}

variable "database_storage_allocated" {
  description = "Allowed database storage in GB"
  type        = number
}

variable "database_username_services" {
  description = "Services database username"
  type        = string
  default     = "service"
}

variable "database_username_ferrothorn" {
  description = "Ferrothorn database username"
  type        = string
  default     = "service"
}
