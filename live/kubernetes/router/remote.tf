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

data "terraform_remote_state" "dns" {
  backend = "s3"

  config = {
    bucket  = var.dns_state_bucket
    key     = var.dns_state_key
    region  = var.dns_state_region
    profile = var.dns_state_profile
  }
}
