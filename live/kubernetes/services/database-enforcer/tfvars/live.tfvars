cluster_state_key   = "kubernetes/cluster.tfstate"
database_state_key  = "services/brane-api/database.tfstate"
namespace_state_key = "namespace.tfstate"

cluster_state_bucket  = "brane-live-digitalocean-terraform-state"
cluster_state_region  = "us-east-1"
cluster_state_profile = "gas"

kube_state_bucket  = "brane-live-kubernetes-terraform-state"
kube_state_region  = "us-east-1"
kube_state_profile = "gas"

image     = "gastrodon/brane-database-enforcer"
image_tag = "latest"

app         = "brane"
environment = "live"
