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

variable "database_password" {
  description = "Database user password"
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

variable "database_username" {
  description = "Database username"
  type        = string
  default     = "service"
}
