variable "acme_server_url" {
  description = "URL where the acme server lives"
  type        = string
}

variable "email_address" {
  description = "Email address to create an acme registration with"
  type        = string
}

variable "domain_name" {
  description = "Domain name to create records for"
  type        = string
}

variable "domain_prefix" {
  description = "Domain prefixes to create records for"
  type        = set(string)
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
