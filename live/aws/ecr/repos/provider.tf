terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.38"
    }
  }

  backend "s3" {
    key     = "ecr/repos.tfstate"
    profile = "gas"
    region  = "us-east-1"
  }
}

provider "aws" {
  allowed_account_ids = ["050883687565"]
  region              = "us-east-1"
  profile             = "gas"

  default_tags {
    tags = {
      app         = var.app
      environment = var.environment
      source      = "live/aws/ecr/repos"
    }
  }
}
