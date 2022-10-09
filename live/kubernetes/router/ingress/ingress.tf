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

resource "kubernetes_ingress_v1" "router" {
  metadata {
    name      = local.prefix
    namespace = data.terraform_remote_state.namespace.outputs.namespace_name
    labels    = local.labels
  }

  spec {
    dynamic "rule" {
      for_each = var.prefix_api

      content {
        host = "${rule.value}.${data.terraform_remote_state.dns.outputs.domain_name}"

        http {
          dynamic "path" {
            for_each = data.terraform_remote_state.services.outputs.routes

            content {
              path = path.value.path

              backend {
                service {
                  name = path.value.name

                  port {
                    number = path.value.port
                  }
                }
              }
            }
          }
        }
      }
    }

    rule {
      host = "${var.prefix_file}.${data.terraform_remote_state.dns.outputs.domain_name}"

      http {
        path {
          path = "/"

          backend {
            service {
              name = data.terraform_remote_state.ferrothorn.outputs.ferrothorn_address

              port {
                number = data.terraform_remote_state.ferrothorn.outputs.ferrothorn_port
              }
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
