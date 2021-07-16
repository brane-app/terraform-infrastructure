resource "github_actioins_environment_secret" "dockerhub_token" {
  repository      = github_repository.service.name
  secret_name     = "DOCKERHUB_TOKEN"
  plaintext_value = var.dockerhub_token
}

resource "github_actioins_environment_secret" "dockerhub_username" {
  repository      = github_repository.service.name
  secret_name     = "DOCKERHUB_USERNAME"
  plaintext_value = var.dockerhub_username
}
