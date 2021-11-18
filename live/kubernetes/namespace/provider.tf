terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~>2"
    }
  }

  backend "s3" {
    key     = "namespace.tfstate"
    profile = "gas"
    region  = "us-east-1"
  }
}

provider "kubernetes" {
  insecure           = true
  host               = data.terraform_remote_state.cluster.outputs.endpoint
  token              = data.terraform_remote_state.cluster.outputs.token
  client_certificate = data.terraform_remote_state.cluster.outputs.client_certificate
  client_key         = data.terraform_remote_state.cluster.outputs.client_key
}
