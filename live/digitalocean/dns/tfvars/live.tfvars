project_state_key = "project.tfstate"
traefik_state_key = "router/traefik.tfstate"

project_state_bucket  = "brane-live-digitalocean-terraform-state"
project_state_region  = "us-east-1"
project_state_profile = "gas"

traefik_state_bucket  = "brane-live-kubernetes-terraform-state"
traefik_state_profile = "gas"
traefik_state_region  = "us-east-1"

domain_name = "gastrodon.io"

domain_prefix_api = [
  "api.brane",
  "imonke",
]

domain_target_mx = [
  "fwd1.porkbun.com.",
  "fwd2.porkbun.com.",
]

domain_target_txt = [
  "v=spf1 mx ~all",
]

app         = "brane"
environment = "live"
