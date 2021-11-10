resource "kubernetes_service" "traefik" {
  metadata {
    name      = local.prefix
    namespace = data.terraform_remote_state.namespace.outputs.namespace_name
    labels    = local.labels
  }

  spec {
    type     = "NodePort"
    selector = local.labels

    port {
      name        = "web"
      protocol    = "TCP"
      port        = 80
      target_port = 80
    }

    port {
      name        = "admin"
      protocol    = "TCP"
      port        = 8080
      target_port = 8080
    }
  }
}

resource "kubernetes_deployment" "traefik" {
  metadata {
    name      = local.prefix
    namespace = data.terraform_remote_state.namespace.outputs.namespace_name
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
          name  = local.prefix
          image = "${var.image}:${var.image_tag}"
          args = [
            "--web",
            "--kubernetes"
          ]

          volume_mount {
            name       = "config"
            mount_path = "/etc/config"
          }
        }

        volume {
          name = "config"
          config_map {
            name = kubernetes_config_map.traefik.metadata[0].name
          }
        }
      }
    }
  }
}
