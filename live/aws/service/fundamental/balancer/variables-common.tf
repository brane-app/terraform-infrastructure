variable "domain_name" {
  description = "Domain name to serve under owned by us in route53"
  type        = string
}

variable "prefix" {
  description = "Prefix to give named resources, to prevent name collision between environments"
  type        = string
}
