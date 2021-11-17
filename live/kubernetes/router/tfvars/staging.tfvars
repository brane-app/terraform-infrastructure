acme_email_address = "mail@gastrodon.io"

ssl_dns_provider = "digitalocean"

traefik_image     = "traefik"
traefik_image_tag = "latest"
traefik_replicas  = 2

dns_state_bucket  = "brane-staging-digitalocean-terraform-state"
dns_state_key     = "dns.tfstate"
dns_state_region  = "us-east-1"
dns_state_profile = "gas"

cluster_state_bucket  = "brane-staging-digitalocean-terraform-state"
cluster_state_key     = "kubernetes/cluster.tfstate"
cluster_state_region  = "us-east-1"
cluster_state_profile = "gas"

app         = "brane"
environment = "staging"
