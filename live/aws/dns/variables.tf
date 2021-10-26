variable "domain_prefix" {
  description = "Domain name prefix"
  type        = string
}

variable "domain_name" {
  description = "Root domain name to route under"
  type        = string
}

variable "prefix" {
  description = "resource prefix"
  type        = string
}

variable "record_evaluate_target_health" {
  description = "Evaluate target health when routing?"
  type        = bool
  default     = true
}
