resource "kubernetes_service" "database" {
  metadata {
    name      = "${local.prefix}-${var.name}"
    namespace = var.namespace
    labels    = local.labels
  }

  spec {
    type     = "ClusterIP"
    selector = local.labels

    port {
      protocol    = "TCP"
      port        = local.database_port
      target_port = 3306
    }
  }
}

resource "kubernetes_deployment" "database" {
  metadata {
    name      = "${local.prefix}-${var.name}"
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
          name  = "${local.prefix}-${var.name}"
          image = "${var.database_image}:${var.database_image_tag}"

          env {
            name  = "MARIADB_DATABASE"
            value = local.database_name
          }

          env {
            name  = "MARIADB_PASSWORD"
            value = random_password.database.result
          }

          env {
            name  = "MARIADB_USER"
            value = local.database_user
          }

          env {
            name  = "MARIADB_RANDOM_ROOT_PASSWORD"
            value = "true"
          }
        }
      }
    }
  }
}
