terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~>4"
    }
  }

  backend "s3" {
    bucket  = "imonke-terraform"
    key     = "repos/libraries.tfstate"
    profile = "gas"
    region  = "us-east-1"
  }
}

provider "github" {
  owner = "brane-app"
  token = var.github_personal_token
}
