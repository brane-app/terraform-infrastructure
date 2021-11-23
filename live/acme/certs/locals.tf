locals {
  dns_prefix = concat(
    tolist(data.terraform_remote_state.dns_api.outputs.domain_prefix),
    tolist(data.terraform_remote_state.dns_file.outputs.domain_prefix),
  )
}
