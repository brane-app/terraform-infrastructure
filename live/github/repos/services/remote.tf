data "terraform_remote_state" "ecr_repos" {
  backend = "s3"

  config = {
    bucket  = "imonke-terraform"
    key     = "ecr/repos.tfstate"
    region  = "us-east-1"
    profile = "gas"
  }
}
