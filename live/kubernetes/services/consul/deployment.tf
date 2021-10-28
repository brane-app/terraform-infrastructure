resource "kubernetes_deployment" "consul" {
  metadata {
    name      = local.prefix
    namespace = local.namespace
    labels    = local.labels
  }

  spec {
    replicas = 1

    selector {
      match_labels = local.labels
    }

    template {
      metadata {
        labels = local.labels
      }

      spec {
        container {
          name  = local.prefix
          image = "consul"
        }
      }
    }
  }
}
