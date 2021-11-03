resource "kubernetes_ingress" "router" {
  metadata {
    name      = local.prefix
    namespace = data.terraform_remote_state.namespace.outputs.namespace_name
    labels    = local.labels
  }

  spec {
    backend {
      service_name = data.terraform_remote_state.consul.outputs.address
      service_port = data.terraform_remote_state.consul.outputs.port_http_tcp
    }

    rule {
      http {
        path {
          backend {
            service_name = data.terraform_remote_state.consul.outputs.address
            service_port = data.terraform_remote_state.consul.outputs.port_http_tcp
          }

          path = "/"
        }
      }
    }
  }
}
