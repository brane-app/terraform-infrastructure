resource "github_actions_secret" "github_token" {
  repository      = github_repository.service.name
  secret_name     = "GH_TOKEN"
  plaintext_value = var.github_token
}
