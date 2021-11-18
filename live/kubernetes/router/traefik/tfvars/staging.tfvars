cluster_state_key   = "kubernetes/cluster.tfstate"
namespace_state_key = "namespace.tfstate"

cluster_state_bucket  = "brane-staging-digitalocean-terraform-state"
cluster_state_region  = "us-east-1"
cluster_state_profile = "gas"

kube_state_bucket  = "brane-staging-kubernetes-terraform-state"
kube_state_region  = "us-east-1"
kube_state_profile = "gas"

traefik_image     = "traefik"
traefik_image_tag = "latest"
traefik_replicas  = 2

app         = "brane"
environment = "staging"
