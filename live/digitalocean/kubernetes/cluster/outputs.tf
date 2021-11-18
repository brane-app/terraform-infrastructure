output "endpoint" {
  value = digitalocean_kubernetes_cluster.cluster.endpoint
}

output "token" {
  value     = digitalocean_kubernetes_cluster.cluster.kube_config[0].token
  sensitive = true
}

output "cluster_ca_certificate" {
  value     = digitalocean_kubernetes_cluster.cluster.kube_config[0].cluster_ca_certificate
  sensitive = true
}

output "client_certificate" {
  value     = digitalocean_kubernetes_cluster.cluster.kube_config[0].client_certificate
  sensitive = true
}

output "client_key" {
  value     = digitalocean_kubernetes_cluster.cluster.kube_config[0].client_key
  sensitive = true
}

/*
token
host  ?
*/
