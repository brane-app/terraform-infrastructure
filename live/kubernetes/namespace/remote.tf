data "terraform_remote_state" "cluster" {
  backend = "s3"

  config = {
    bucket  = var.cluster_state_bucket
    key     = var.cluster_state_key
    region  = var.cluster_state_region
    profile = var.cluster_state_profile
  }
}
