variable "image_namespace" {
  description = "Namespace to prefix image names with"
  type        = string
}

variable "services" {
  description = "A collection of servic definitions to deploy"
  type        = map(map(string))
}
