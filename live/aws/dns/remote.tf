data "terraform_remote_state" "balancer" {
  backend = "s3"

  config = {
    bucket  = "imonke-terraform"
    key     = "${var.prefix}/service/fundamental/balancer.tfstate"
    region  = "us-east-1"
    profile = "gas"
  }
}
