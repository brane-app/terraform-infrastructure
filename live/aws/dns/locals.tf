locals {
  zone_name = join(".", [
    "api",
    var.domain_prefix,
    var.domain_name,
  ])
}
