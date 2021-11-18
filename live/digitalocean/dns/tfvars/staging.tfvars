router_state_suffix = "brane-router-traefik-staging"

project_state_bucket  = "brane-staging-digitalocean-terraform-state"
project_state_key     = "project.tfstate"
project_state_region  = "us-east-1"
project_state_profile = "gas"

domain_name       = "gastrodon.io"
domain_prefix_api = ["api.brane-staging"]

app         = "brane"
environment = "staging"
