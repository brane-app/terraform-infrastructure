resource "kubernetes_cluster_role" "role" {
  metadata {
    name = "${var.app}-${var.environment}-traefik-ingress"
  }

  rule {
    api_groups = [
      "",
    ]

    resources = [
      "endpoints",
      "secrets",
      "services",
    ]

    verbs = [
      "get",
      "list",
      "watch",
    ]
  }

  rule {
    api_groups = [
      "extensions",
      "networking.k8s.io",
    ]

    resources = [
      "ingresses",
      "ingressclasses",
    ]

    verbs = [
      "get",
      "list",
      "watch",
    ]
  }

  rule {
    api_groups = [
      "extensions",
    ]

    resources = [
      "ingresses/status",
    ]

    verbs = [
      "update",
    ]
  }
}

resource "kubernetes_cluster_role_binding" "role" {
  metadata {
    name = "${var.app}-${var.environment}-traefik-ingress-binding"
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = kubernetes_cluster_role.role.metadata[0].name
  }

  subject {
    kind      = "ServiceAccount"
    name      = "default"
    namespace = data.terraform_remote_state.namespace.outputs.namespace_name
  }
}
