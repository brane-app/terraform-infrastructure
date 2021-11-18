data "terraform_remote_state" "namespace" {
  backend = "kubernetes"

  config = {
    load_config_file = true
    secret_suffix    = "brane-namespace-${var.environment}"
  }
}

data "terraform_remote_state" "services" {
  backend = "kubernetes"

  config = {
    load_config_file = true
    secret_suffix    = "brane-services-brane-api-services-${var.environment}"
  }
}

data "terraform_remote_state" "cluster" {
  backend = "s3"

  config = {
    bucket  = var.cluster_state_bucket
    key     = var.cluster_state_key
    region  = var.cluster_state_region
    profile = var.cluster_state_profile
  }
}

data "terraform_remote_state" "acme" {
  backend = "s3"

  config = {
    bucket  = var.acme_state_bucket
    key     = var.acme_state_key
    region  = var.acme_state_region
    profile = var.acme_state_profile
  }
}