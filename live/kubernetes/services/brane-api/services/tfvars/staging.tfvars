cluster_state_key    = "kubernetes/cluster.tfstate"
database_state_key   = "services/brane-api/database.tfstate"
ferrothorn_state_key = "services/ferrothorn.tfstate"
namespace_state_key  = "namespace.tfstate"


cluster_state_bucket  = "brane-staging-digitalocean-terraform-state"
cluster_state_region  = "us-east-1"
cluster_state_profile = "gas"

kube_state_bucket  = "brane-staging-kubernetes-terraform-state"
kube_state_region  = "us-east-1"
kube_state_profile = "gas"

app         = "brane"
environment = "staging"
