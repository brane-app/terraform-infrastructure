traefik_image     = "traefik"
traefik_image_tag = "latest"
traefik_replicas  = 2

cluster_state_bucket  = "brane-live-digitalocean-terraform-state"
cluster_state_key     = "kubernetes/cluster.tfstate"
cluster_state_region  = "us-east-1"
cluster_state_profile = "gas"

app         = "brane"
environment = "staging"
