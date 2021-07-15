module "service_repo" {
  source = "/home/zero/Documents/programming/imonke/terraform-infrastructure/modules/repo/api_service"

  for_each         = var.services
  service_name     = each.value
  repo_description = "The ${each.value} brane microservice"
}
