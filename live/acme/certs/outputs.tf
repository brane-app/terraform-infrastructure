output "ssl_certificate" {
  value     = acme_certificate.ssl.certificate_pem
  sensitive = true
}

output "ssl_key" {
  value     = acme_certificate.ssl.private_key_pem
  sensitive = true
}
