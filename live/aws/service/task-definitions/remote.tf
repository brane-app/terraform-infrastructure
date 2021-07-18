data "terraform_remote_state" "database" {
  backend = "s3"

  config = {
    bucket  = "imonke-terraform"
    key     = "${var.prefix}/service/fundamental/database.tfstate"
    region  = "us-east-1"
    profile = "gas"
  }
}

data "terraform_remote_state" "execution-role" {
  backend = "s3"

  config = {
    bucket  = "imonke-terraform"
    key     = "${var.prefix}/service/fundamental/execution-role.tfstate"
    region  = "us-east-1"
    profile = "gas"
  }
}

data "terraform_remote_state" "ecr_repos" {
  backend = "s3"

  config = {
    bucket  = "imonke-terraform"
    key     = "ecr/repos.tfstate"
    region  = "us-east-1"
    profile = "gas"
  }
}
