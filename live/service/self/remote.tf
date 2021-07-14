data "terraform_remote_state" "balancer" {
  backend = "s3"

  config = {
    bucket  = "imonke-terraform"
    key     = "${var.prefix}/service/fundamental/balancer.tfstate"
    region  = "us-east-1"
    profile = "gas"
  }
}

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

data "terraform_remote_state" "cluster" {
  backend = "s3"

  config = {
    bucket  = "imonke-terraform"
    key     = "${var.prefix}/fundamental/cluster.tfstate"
    region  = "us-east-1"
    profile = "gas"
  }
}

data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket  = "imonke-terraform"
    key     = "${var.prefix}/fundamental/network.tfstate"
    region  = "us-east-1"
    profile = "gas"
  }
}

data "terraform_remote_state" "security" {
  backend = "s3"

  config = {
    bucket  = "imonke-terraform"
    key     = "${var.prefix}/fundamental/security.tfstate"
    region  = "us-east-1"
    profile = "gas"
  }
}
