output "endpoint" {
  value = digitalocean_kubernetes_cluster.cluster.endpoint
}

output "token" {
  value     = digitalocean_kubernetes_cluster.cluster.kube_config[0].token
  sensitive = true
}

output "ca_certificate" {
  value     = digitalocean_kubernetes_cluster.cluster.kube_config[0].cluster_ca_certificate
  sensitive = true
}

output "ca_certificate_base64" {
  value     = base64encode(digitalocean_kubernetes_cluster.cluster.kube_config[0].cluster_ca_certificate)
  sensitive = true
}
