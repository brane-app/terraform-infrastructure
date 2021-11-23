resource "kubernetes_service" "service" {
  metadata {
    name      = "${local.prefix}-${var.service}"
    namespace = var.namespace
    labels    = local.labels
  }

  spec {
    type     = "ClusterIP"
    selector = local.labels

    port {
      protocol    = "TCP"
      port        = local.port
      target_port = 8000
    }
  }
}

resource "kubernetes_deployment" "service" {
  metadata {
    name      = "${local.prefix}-${var.service}"
    namespace = var.namespace
    labels    = local.labels
  }

  spec {
    replicas = var.service_replicas

    selector {
      match_labels = local.labels
    }

    template {
      metadata {
        labels = local.labels
      }

      spec {
        container {
          name  = "${local.prefix}-${var.service}"
          image = "${var.service_image}:${var.service_image_label}"

          env {
            name  = "DATABASE_CONNECTION"
            value = local.database_connection
          }

          env {
            name  = "PATH_PREFIX"
            value = var.service_path_prefix
          }

          env {
            name  = "FERROTHORN_HOST"
            value = var.ferrothorn_host
          }

          env {
            name  = "FERROTHORN_MASK"
            value = var.ferrothorn_mask
          }

          env {
            name  = "FERROTHORN_SECRET"
            value = var.ferrothorn_secret
          }
        }
      }
    }
  }
}
