data "terraform_remote_state" "dns_root" {
  backend = "s3"

  config = {
    key     = var.dns_root_state_key
    bucket  = var.ocean_state_bucket_live
    region  = var.ocean_state_region
    profile = var.ocean_state_profile
  }
}

data "terraform_remote_state" "dns_api" {
  backend = "s3"

  config = {
    key     = var.dns_api_state_key
    bucket  = var.ocean_state_bucket
    region  = var.ocean_state_region
    profile = var.ocean_state_profile
  }
}
