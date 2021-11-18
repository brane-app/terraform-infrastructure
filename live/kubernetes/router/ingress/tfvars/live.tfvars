traefik_image     = "traefik"
traefik_image_tag = "latest"
traefik_replicas  = 2

acme_state_bucket  = "brane-live-acme-terraform-state"
acme_state_key     = "certs.tfstate"
acme_state_region  = "us-east-1"
acme_state_profile = "gas"

cluster_state_bucket  = "brane-live-digitalocean-terraform-state"
cluster_state_key     = "kubernetes/cluster.tfstate"
cluster_state_region  = "us-east-1"
cluster_state_profile = "gas"

app         = "brane"
environment = "live"
