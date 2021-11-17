project_state_bucket  = "brane-live-digitalocean-terraform-state"
project_state_key     = "project.tfstate"
project_state_region  = "us-east-1"
project_state_profile = "gas"

domain_name = "gastrodon.io"

domain_prefix_api = [
  "api.brane",
  "imonke",
]

router_state_suffix = "brane-router-live"

app         = "brane"
environment = "live"
