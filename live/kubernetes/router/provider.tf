terraform {
  required_providers {
    acme = {
      source  = "vancluever/acme"
      version = "~>2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~>2"
    }
  }

  backend "kubernetes" {
    load_config_file = true
  }
}

provider "acme" {
  server_url = "https://acme-v02.api.letsencrypt.org/directory"
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "default"
}
