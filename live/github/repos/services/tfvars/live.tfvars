dockerhub_username = "gastrodon"

ecr_namespace     = "v6g1e4z1"
ecr_state_bucket  = "brane-staging-aws-terraform-state"
ecr_state_key     = "ecr/repos.tfstate"
ecr_state_region  = "us-east-1"
ecr_state_profile = "gas"

services = [
  "auth",
  "bans",
  "check",
  "content-create",
  "content-giver",
  "feed-giver",
  "report",
  "self",
  "user-create",
  "user-giver",
]
