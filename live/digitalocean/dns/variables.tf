variable "domain_name" {
  description = "Domain name to create records for"
  type        = string
}

variable "domain_prefix_api" {
  description = "Prefix on the domain name that should route to the project API"
  type        = string
}

variable "router_state_suffix" {
  description = "Secret suffix holding kubernetes router state"
  type        = string
}

variable "app" {
  description = "App being deployed"
  type        = string
}

variable "environment" {
  description = "App deployment environment"
  type        = string
}
