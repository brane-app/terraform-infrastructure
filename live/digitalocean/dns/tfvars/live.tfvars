project_state_bucket  = "brane-live-digitalocean-terraform-state"
project_state_key     = "project.tfstate"
project_state_region  = "us-east-1"
project_state_profile = "gas"

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

router_state_suffix = "brane-router-live"

app         = "brane"
environment = "live"
