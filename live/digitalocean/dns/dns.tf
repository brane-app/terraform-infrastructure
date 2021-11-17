resource "digitalocean_domain" "root" {
  name = var.domain_name
}

resource "digitalocean_record" "api" {
  for_each = var.domain_prefix_api

  domain = digitalocean_domain.root.name
  name   = each.value
  type   = "A"
  value  = data.terraform_remote_state.router.outputs.balancer_ip
}

resource "digitalocean_record" "mx" {
  for_each = var.domain_target_mx

  domain   = digitalocean_domain.root.name
  value    = each.value
  name     = "@"
  type     = "MX"
  priority = 1
}

resource "digitalocean_record" "txt" {
  for_each = var.domain_target_txt

  domain = digitalocean_domain.root.name
  value  = each.value
  name   = "@"
  type   = "TXT"
}
