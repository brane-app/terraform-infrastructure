data "digitalocean_kubernetes_versions" "cluster" {
  version_prefix = var.cluster_version_prefix
}

resource "digitalocean_kubernetes_cluster" "cluster" {
  name    = "${var.app}-${var.environment}"
  region  = var.region
  version = data.digitalocean_kubernetes_versions.cluster.latest_version

  maintenance_policy {
    day        = var.cluster_maintenance_day
    start_time = var.cluster_maintenance_time
  }

  node_pool {
    name = "${var.app}-${var.environment}-node"
    size = var.node_size

    auto_scale = true
    min_nodes  = var.node_autoscale_min
    max_nodes  = var.node_autoscale_max
  }
}
