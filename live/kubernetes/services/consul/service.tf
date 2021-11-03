resource "kubernetes_service" "consul" {
  metadata {
    name      = local.prefix
    namespace = data.terraform_remote_state.namespace.outputs.namespace_name
    labels    = local.labels
  }

  spec {
    type = "ClusterIP"

    port {
      name        = "${local.prefix}-rpc-tcp"
      protocol    = "TCP"
      port        = local.port_rcp_tcp
      target_port = local.port_rcp_tcp
    }

    port {
      name        = "${local.prefix}-rpc-udp"
      protocol    = "UDP"
      port        = local.port_rcp_udp
      target_port = local.port_rcp_udp
    }

    port {
      name        = "${local.prefix}-serf-tcp"
      protocol    = "TCP"
      port        = local.port_serf_tcp
      target_port = local.port_serf_tcp
    }

    port {
      name        = "${local.prefix}-http-tcp"
      protocol    = "TCP"
      port        = local.port_http_tcp
      target_port = local.port_http_tcp
    }

    port {
      name        = "${local.prefix}-dns-tcp"
      protocol    = "TCP"
      port        = local.port_dns_tcp
      target_port = local.port_dns_tcp
    }

    port {
      name        = "${local.prefix}-dns-udp"
      protocol    = "UDP"
      port        = local.port_dns_udp
      target_port = local.port_dns_udp
    }
  }
}
