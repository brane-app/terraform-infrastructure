resource "kubernetes_service" "traefik" {
  metadata {
    name      = "${local.prefix}-traefik"
    namespace = data.terraform_remote_state.namespace.outputs.namespace_name
    labels    = local.labels
  }

  spec {
    type     = "LoadBalancer"
    selector = local.labels

    port {
      protocol    = "TCP"
      port        = local.traefik_port
      target_port = 80
    }
  }
}

resource "kubernetes_deployment" "traefik" {
  metadata {
    name      = "${local.prefix}-traefik"
    namespace = data.terraform_remote_state.namespace.outputs.namespace_name
    labels    = local.labels
  }

  spec {
    replicas = var.traefik_replicas

    selector {
      match_labels = local.labels
    }

    template {
      metadata {
        labels = local.labels
      }

      spec {
        container {
          name  = "${local.prefix}-traefik"
          image = "${var.traefik_image}:${var.traefik_image_tag}"
          args = [
            "--providers.kubernetesingress=true",
            "--providers.kubernetesingress.labelselector=app=${var.app}",
          ]
        }
      }
    }
  }
}
