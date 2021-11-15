terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2"
    }
  }

  backend "s3" {
    key     = "kubernetes/cluster.tfstate"
    profile = "gas"
    region  = "us-east-1"
  }
}

variable "digitalocean_token" {
  description = "DigitalOcean API token"
  type        = string
  sensitive   = true
}

provider "digitalocean" {
  token = var.digitalocean_token
}
