resource "tls_private_key" "ssl" {
  algorithm = "RSA"
}

resource "acme_registration" "ssl" {
  email_address   = var.email_address
  account_key_pem = tls_private_key.ssl.private_key_pem
}

resource "acme_certificate" "ssl" {
  account_key_pem = tls_private_key.ssl.private_key_pem
  common_name     = var.domain_name

  subject_alternative_names = [
    for it in var.domain_prefix :
    "${it}.${var.domain_name}"
  ]

  dns_challenge {
    provider = var.challenge_provider
    config   = var.challenge_config
  }

  depends_on = [
    acme_registration.ssl,
  ]
}
