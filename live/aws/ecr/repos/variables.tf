variable "services" {
  description = "Collection of services to make repos for"
  type        = set(string)
  default     = []
}
