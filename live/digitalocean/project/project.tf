resource "digitalocean_project" "project" {
  name        = "${var.app}-${var.environment}"
  description = "Resources for app ${var.app} environment ${var.environment}"

  purpose     = "Service or API"
  environment = var.project_environment
}
