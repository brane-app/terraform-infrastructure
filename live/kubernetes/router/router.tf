resource "kubernetes_ingress" "router" {
  metadata {
    name      = local.prefix
    namespace = data.terraform_remote_state.namespace.outputs.namespace_name
    labels    = local.labels
  }

  spec {
    backend {
      service_name = kubernetes_service.traefik.metadata[0].name
      service_port = local.traefik_port
    }

    dynamic "rule" {
      for_each = data.terraform_remote_state.services.outputs.routes

      content {
        http {
          path {
            path = rule.value.path

            backend {
              service_name = rule.value.name
              service_port = rule.value.port
            }
          }
        }
      }
    }
  }
}
