resource "kubernetes_secret" "ssl" {
  metadata {
    name      = "${var.app}-${var.environment}-router-tls"
    namespace = data.terraform_remote_state.namespace.outputs.namespace_name
    labels    = local.labels
  }

  data = {
    "tls.crt" = data.terraform_remote_state.acme.outputs.ssl_certificate
    "tls.key" = data.terraform_remote_state.acme.outputs.ssl_key
  }
}

resource "kubernetes_ingress" "router" {
  metadata {
    name      = local.prefix
    namespace = data.terraform_remote_state.namespace.outputs.namespace_name
    labels    = local.labels
  }

  spec {
    rule {
      http {
        dynamic "path" {
          for_each = data.terraform_remote_state.services.outputs.routes

          content {
            path = path.value.path

            backend {
              service_name = path.value.name
              service_port = path.value.port
            }
          }
        }
      }
    }

    tls {
      secret_name = kubernetes_secret.ssl.metadata[0].name
    }
  }
}
