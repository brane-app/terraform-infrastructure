data "terraform_remote_state" "cluster" {
  backend = "s3"

  config = {
    key     = var.cluster_state_key
    bucket  = var.cluster_state_bucket
    region  = var.cluster_state_region
    profile = var.cluster_state_profile
  }
}

data "terraform_remote_state" "namespace" {
  backend = "s3"

  config = {
    key     = var.namespace_state_key
    bucket  = var.kube_state_bucket
    region  = var.kube_state_region
    profile = var.kube_state_profile
  }
}
