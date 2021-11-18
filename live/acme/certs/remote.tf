data "terraform_remote_state" "dns" {
  backend = "s3"

  config = {
    bucket  = var.dns_state_bucket
    key     = var.dns_state_key
    region  = var.dns_state_region
    profile = var.dns_state_profile
  }
}
