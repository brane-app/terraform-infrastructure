resource "digitalocean_record" "mx" {
  for_each = var.domain_target_mx

  domain   = data.terraform_remote_state.root.outputs.domain_name
  value    = each.value
  name     = "@"
  type     = "MX"
  priority = 1
}

resource "digitalocean_record" "txt" {
  for_each = var.domain_target_txt

  domain = data.terraform_remote_state.root.outputs.domain_name
  value  = each.value
  name   = "@"
  type   = "TXT"
}
