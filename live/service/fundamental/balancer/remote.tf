data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket  = "imonke-terraform"
    key     = "${var.prefix}/fundamental/network.tfstate"
    region  = "us-east-1"
    profile = "gas"
  }
}
