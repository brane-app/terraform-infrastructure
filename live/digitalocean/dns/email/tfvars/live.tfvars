project_state_key = "project.tfstate"
root_state_key    = "dns/root.tfstate"

ocean_state_bucket  = "brane-live-digitalocean-terraform-state"
ocean_state_region  = "us-east-1"
ocean_state_profile = "gas"

domain_target_mx = [
  "fwd1.porkbun.com.",
  "fwd2.porkbun.com.",
]

domain_target_txt = [
  "v=spf1 mx ~all",
]

app         = "brane"
environment = "live"
