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
      name        = "http"
      protocol    = "TCP"
      port        = local.traefik_port_http
      target_port = 80
    }

    port {
      name        = "https"
      protocol    = "TCP"
      port        = local.traefik_port_https
      target_port = 443
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
            "--providers.kubernetesingress.labelselector=environment=${var.environment}",

            "--entrypoints.http.address=:80",
            "--entrypoints.https.address=:443",

            "--entrypoints.http.http.redirections.entryPoint.to=https",
            "--entrypoints.http.http.redirections.entryPoint.scheme=https",
            "--entrypoints.http.http.redirections.entrypoint.permanent=true",

            "--entryPoints.https.http.tls=true",
          ]
        }
      }
    }
  }
}
