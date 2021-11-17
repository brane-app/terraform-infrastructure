resource "digitalocean_domain" "root" {
  name = var.domain_name
}


resource "digitalocean_record" "api" {
  domain = digitalocean_domain.root.name
  name   = var.domain_prefix_api
  type   = "A"
  value  = data.terraform_remote_state.router.outputs.balancer_ip
}
