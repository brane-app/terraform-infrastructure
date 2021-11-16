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
  }
}
