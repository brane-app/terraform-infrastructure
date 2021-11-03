resource "kubernetes_deployment" "service" {
  metadata {
    name      = local.prefix
    namespace = var.namespace
    labels    = local.labels
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = local.labels
    }

    template {
      metadata {
        labels = local.labels
      }

      spec {
        container {
          image = "${var.image}:${var.image_tag}"
          name  = local.prefix

          env {
            name  = "DATABASE_CONNECTION"
            value = local.database_connection
          }
        }
      }
    }
  }
}
