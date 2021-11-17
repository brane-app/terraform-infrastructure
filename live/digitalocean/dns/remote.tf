data "terraform_remote_state" "project" {
  backend = "s3"

  config = {
    bucket  = var.project_state_bucket
    key     = var.project_state_key
    region  = var.project_state_region
    profile = var.project_state_profile
  }
}

data "terraform_remote_state" "router" {
  backend = "kubernetes"

  config = {
    load_config_file = true
    secret_suffix    = var.router_state_suffix
  }
}
