resource "kubernetes_config_map" "traefik" {
  metadata {
    name      = "${local.prefix}-config"
    namespace = data.terraform_remote_state.namespace.outputs.namespace_name
    labels    = local.labels
  }

  data = {
    traefik_config = yamlencode({
      foo = "bar"
    })
  }
}
