data "terraform_remote_state" "namespace" {
  backend = "kubernetes"

  config = {
    load_config_file = true
    secret_suffix    = "brane-namespace-${var.environment}"
  }
}

data "terraform_remote_state" "ferrothorn" {
  backend = "kubernetes"

  config = {
    load_config_file = true
    secret_suffix    = "brane-services-ferrothorn-${var.environment}"
  }
}

data "terraform_remote_state" "database" {
  backend = "kubernetes"

  config = {
    load_config_file = true
    secret_suffix    = "brane-services-brane-api-database-${var.environment}"
  }
}
