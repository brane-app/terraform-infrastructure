data "terraform_remote_state" "namespace" {
  backend = "kubernetes"

  config = {
    load_config_file = true
    secret_suffix    = "brane-namespace-${var.environment}"
  }
}

data "terraform_remote_state" "consul" {
  backend = "kubernetes"

  config = {
    load_config_file = true
    secret_suffix    = "brane-services-consul-${var.environment}"
  }
}
