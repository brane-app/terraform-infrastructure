resource "digitalocean_record" "api" {
  for_each = var.domain_prefix

  domain = data.terraform_remote_state.root.outputs.domain_name
  name   = each.value
  type   = "A"
  value  = data.terraform_remote_state.traefik.outputs.balancer_ip
}
