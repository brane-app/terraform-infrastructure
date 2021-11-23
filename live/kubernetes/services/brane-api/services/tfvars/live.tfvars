cluster_state_key    = "kubernetes/cluster.tfstate"
dns_state_key        = "dns/root.tfstate"
database_state_key   = "services/brane-api/database.tfstate"
ferrothorn_state_key = "services/ferrothorn.tfstate"
namespace_state_key  = "namespace.tfstate"

kube_state_bucket  = "brane-live-kubernetes-terraform-state"
kube_state_region  = "us-east-1"
kube_state_profile = "gas"

ferrothorn_mask_prefix = "file.brane"

image_tag = "latest"

app         = "brane"
environment = "live"
