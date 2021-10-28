resource "kubernetes_service" "consul" {
  metadata {
    name      = local.prefix
    namespace = local.namespace
    labels    = local.labels
  }

  spec {
    type = "ClusterIP"

    port {
      name        = "${local.prefix}-rpc-tcp"
      protocol    = "TCP"
      port        = 8300
      target_port = 8300
    }

    port {
      name        = "${local.prefix}-serf-tcp"
      protocol    = "TCP"
      port        = 8301
      target_port = 8301
    }

    port {
      name        = "${local.prefix}-rpc-udp"
      protocol    = "UDP"
      port        = 8301
      target_port = 8301
    }

    port {
      name        = "${local.prefix}-http-tcp"
      protocol    = "TCP"
      port        = 8500
      target_port = 8500
    }

    port {
      name        = "${local.prefix}-dns-tcp"
      protocol    = "TCP"
      port        = 8600
      target_port = 8600
    }

    port {
      name        = "${local.prefix}-dns-udp"
      protocol    = "UDP"
      port        = 8600
      target_port = 8600
    }
  }
}
