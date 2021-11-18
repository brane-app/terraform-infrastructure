acme_state_key      = "certs.tfstate"
cluster_state_key   = "kubernetes/cluster.tfstate"
namespace_state_key = "namespace.tfstate"
services_state_key  = "services/brane-api/services.tfstate"

acme_state_bucket  = "brane-live-acme-terraform-state"
acme_state_region  = "us-east-1"
acme_state_profile = "gas"

cluster_state_bucket  = "brane-live-digitalocean-terraform-state"
cluster_state_region  = "us-east-1"
cluster_state_profile = "gas"

kube_state_bucket  = "brane-live-kubernetes-terraform-state"
kube_state_region  = "us-east-1"
kube_state_profile = "gas"

app         = "brane"
environment = "live"
