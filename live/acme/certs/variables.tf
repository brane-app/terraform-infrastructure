variable "acme_server_url" {
  description = "URL where the acme server lives"
  type        = string
}

variable "dns_state_bucket" {
  description = "S3 bucket holding dns state"
  type        = string
}

variable "dns_state_key" {
  description = "Bucket key holding dns state"
  type        = string
}

variable "dns_state_region" {
  description = "Region where the state bucket lives"
  type        = string
}

variable "dns_state_profile" {
  description = "Profile where the the state bucket lives"
  type        = string
}

variable "email_address" {
  description = "Email address to create an acme registration with"
  type        = string
}

variable "challenge_provider" {
  description = "Provider to dns lookup and verify domain owning"
  type        = string
}

variable "challenge_config" {
  description = "Challenge provider config"
  type        = map(any)
  sensitive   = true
}
