data "terraform_remote_state" "router" {
  backend = "kubernetes"

  config = {
    load_config_file = true
    secret_suffix    = var.router_state_suffix
  }
}
