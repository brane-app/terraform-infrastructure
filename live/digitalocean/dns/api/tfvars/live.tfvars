project_state_key = "project.tfstate"
root_state_key    = "dns/root.tfstate"
traefik_state_key = "router/traefik.tfstate"

ocean_state_bucket      = "brane-live-digitalocean-terraform-state"
ocean_state_bucket_live = "brane-live-digitalocean-terraform-state"
ocean_state_region      = "us-east-1"
ocean_state_profile     = "gas"

traefik_state_bucket  = "brane-live-kubernetes-terraform-state"
traefik_state_profile = "gas"
traefik_state_region  = "us-east-1"

domain_prefix = [
  "api.brane",
  "imonke",
]

app         = "brane"
environment = "live"
