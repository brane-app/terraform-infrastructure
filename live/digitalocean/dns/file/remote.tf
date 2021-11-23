data "terraform_remote_state" "project" {
  backend = "s3"

  config = {
    key     = var.project_state_key
    bucket  = var.ocean_state_bucket
    region  = var.ocean_state_region
    profile = var.ocean_state_profile
  }
}

data "terraform_remote_state" "root" {
  backend = "s3"

  config = {
    key     = var.root_state_key
    bucket  = var.ocean_state_bucket_live
    profile = var.ocean_state_profile
    region  = var.ocean_state_region
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
