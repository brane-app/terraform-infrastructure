data "terraform_remote_state" "acme" {
  backend = "s3"

  config = {
    key     = var.acme_state_key
    bucket  = var.acme_state_bucket
    region  = var.acme_state_region
    profile = var.acme_state_profile
  }
}

data "terraform_remote_state" "dns" {
  backend = "s3"

  config = {
    key     = var.dns_state_key
    bucket  = var.dns_state_bucket
    region  = var.dns_state_region
    profile = var.dns_state_profile
  }
}

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

data "terraform_remote_state" "services" {
  backend = "s3"

  config = {
    key     = var.services_state_key
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
