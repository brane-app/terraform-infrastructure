terraform {
  required_providers {
    acme = {
      source  = "vancluever/acme"
      version = "~>2"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~>3"
    }
  }

  backend "s3" {
    key     = "certs.tfstate"
    profile = "gas"
    region  = "us-east-1"
  }
}

provider "acme" {
  server_url = var.acme_server_url
}
