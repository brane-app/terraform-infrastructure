project_state_bucket  = "brane-live-digitalocean-terraform-state"
project_state_key     = "project.tfstate"
project_state_region  = "us-east-1"
project_state_profile = "gas"

region = "nyc1"

cluster_version_prefix   = "1."
cluster_maintenance_day  = "wednesday"
cluster_maintenance_time = "02:00"

node_size          = "s-1vcpu-2gb"
node_autoscale_min = 1
node_autoscale_max = 1

app         = "brane"
environment = "live"
