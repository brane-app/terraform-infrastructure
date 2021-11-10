data "terraform_remote_state" "ecr_repos" {
  backend = "s3"

  config = {
    bucket  = var.ecr_state_bucket
    key     = var.ecr_state_key
    region  = var.ecr_state_region
    profile = var.ecr_state_profile
  }
}
