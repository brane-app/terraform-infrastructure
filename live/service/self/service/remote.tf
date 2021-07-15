data "terraform_remote_state" "task_definition" {
  backend = "s3"

  config = {
    bucket  = "imonke-terraform"
    key     = "${var.prefix}/service/self/task_definition.tfstate"
    region  = "us-east-1"
    profile = "gas"
  }
}

data "terraform_remote_state" "balancer" {
  backend = "s3"

  config = {
    bucket  = "imonke-terraform"
    key     = "${var.prefix}/service/fundamental/balancer.tfstate"
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
