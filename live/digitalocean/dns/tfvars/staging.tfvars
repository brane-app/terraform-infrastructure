project_state_key = "project.tfstate"
traefik_state_key = "router/traefik.tfstate"

project_state_bucket  = "brane-staging-digitalocean-terraform-state"
project_state_region  = "us-east-1"
project_state_profile = "gas"

traefik_state_bucket  = "brane-staging-kubernetes-terraform-state"
traefik_state_profile = "gas"
traefik_state_region  = "us-east-1"

domain_name       = "gastrodon.io"
domain_prefix_api = ["api.brane-staging"]

app         = "brane"
environment = "staging"
