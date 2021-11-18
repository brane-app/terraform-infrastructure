data "terraform_remote_state" "project" {
  backend = "s3"

  config = {
    bucket  = var.project_state_bucket
    key     = var.project_state_key
    region  = var.project_state_region
    profile = var.project_state_profile
  }
}

data "terraform_remote_state" "traefik" {
  backend = "s3"

  config = {
    key     = var.traefik_state_key
    bucket  = var.traefik_state_bucket
    profile = var.traefik_state_profile
    region  = var.traefik_state_region
  }
}
