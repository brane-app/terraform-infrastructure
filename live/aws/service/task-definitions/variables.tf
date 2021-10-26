variable "service_map" {
  description = "Map of objects describing services to create task definitions for"
  type        = map(any)
}

variable "ferrothorn_docker_repo" {
  description = "Docker repo url for ferrothorn"
  type        = string
}
