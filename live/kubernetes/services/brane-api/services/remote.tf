data "terraform_remote_state" "cluster" {
  backend = "s3"

  config = {
    key     = var.cluster_state_key
    bucket  = var.ocean_state_bucket
    region  = var.ocean_state_region
    profile = var.ocean_state_profile
  }
}

data "terraform_remote_state" "dns" {
  backend = "s3"

  config = {
    key     = var.dns_state_key
    bucket  = var.ocean_state_bucket
    region  = var.ocean_state_region
    profile = var.ocean_state_profile
  }
}

data "terraform_remote_state" "database" {
  backend = "s3"

  config = {
    key     = var.database_state_key
    bucket  = var.kube_state_bucket
    region  = var.kube_state_region
    profile = var.kube_state_profile
  }
}

data "terraform_remote_state" "ferrothorn" {
  backend = "s3"

  config = {
    key     = var.ferrothorn_state_key
    bucket  = var.kube_state_bucket
    region  = var.kube_state_region
    profile = var.kube_state_profile
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
