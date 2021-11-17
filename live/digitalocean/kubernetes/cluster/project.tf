resource "digitalocean_project_resources" "project" {
  project = data.terraform_remote_state.project.outputs.id

  resources = [
    digitalocean_kubernetes_cluster.cluster.urn,
  ]
}
