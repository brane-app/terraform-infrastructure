resource "kubernetes_service" "ferrothorn" {
  metadata {
    name      = "${local.prefix}-ferrothorn-service"
    namespace = var.namespace
    labels    = local.labels_service
  }

  spec {
    type     = "ClusterIP"
    selector = local.labels_service

    port {
      protocol    = "TCP"
      port        = 8000
      target_port = 8000
    }
  }

  depends_on = [
    kubernetes_deployment.database,
    kubernetes_service.database,
  ]
}

resource "kubernetes_deployment" "ferrothorn" {
  metadata {
    name      = "${local.prefix}-ferrothorn-service"
    namespace = var.namespace
    labels    = local.labels_service
  }

  spec {
    replicas = 2

    selector {
      match_labels = local.labels_service
    }

    template {
      metadata {
        labels = local.labels_service
      }

      spec {
        container {
          name  = "${local.prefix}-ferrothorn-service"
          image = "${var.ferrothorn_image}:${var.ferrothorn_image_tag}"

          env {
            name  = "FERROTHORN_CONNECTION"
            value = local.database_connection
          }

          env {
            name  = "FERROTHORN_SECRET"
            value = random_password.ferrothorn.result
          }
        }
      }
    }
  }

  depends_on = [
    kubernetes_deployment.database,
    kubernetes_service.database,
  ]
}
