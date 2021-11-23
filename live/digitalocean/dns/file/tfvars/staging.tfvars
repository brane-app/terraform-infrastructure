project_state_key = "project.tfstate"
root_state_key    = "dns/root.tfstate"
traefik_state_key = "router/traefik.tfstate"

ocean_state_bucket      = "brane-staging-digitalocean-terraform-state"
ocean_state_bucket_live = "brane-live-digitalocean-terraform-state"
ocean_state_region      = "us-east-1"
ocean_state_profile     = "gas"

traefik_state_bucket  = "brane-staging-kubernetes-terraform-state"
traefik_state_profile = "gas"
traefik_state_region  = "us-east-1"

domain_prefix = [
  "file.brane.staging",
]

app         = "brane"
environment = "staging"
