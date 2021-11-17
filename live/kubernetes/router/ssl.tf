resource "tls_private_key" "ssl" {
  algorithm = "RSA"
}

resource "acme_registration" "ssl" {
  email_address   = var.acme_email_address
  account_key_pem = tls_private_key.ssl.private_key_pem
}

resource "acme_certificate" "ssl" {
  account_key_pem = tls_private_key.ssl.private_key_pem
  common_name     = data.terraform_remote_state.dns.outputs.domain_name

  subject_alternative_names = [
    for it in data.terraform_remote_state.dns.outputs.domain_prefix_api :
    "${it}.${data.terraform_remote_state.dns.outputs.domain_name}"
  ]

  dns_challenge {
    provider = var.ssl_dns_provider
    config   = var.ssl_dns_config
  }

  depends_on = [
    acme_registration.ssl
  ]
}

resource "kubernetes_secret" "ssl" {
  metadata {
    name      = "${var.app}-${var.environment}-router-tls"
    namespace = data.terraform_remote_state.namespace.outputs.namespace_name
    labels    = local.labels
  }

  data = {
    "tls.crt" = acme_certificate.ssl.certificate_pem
    "tls.key" = acme_certificate.ssl.private_key_pem
  }
}

output "certificate_url" {
  value = acme_certificate.ssl.certificate_url
}
