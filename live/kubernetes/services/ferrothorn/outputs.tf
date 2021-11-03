output "ferrothorn_address" {
  value = module.ferrothorn.ferrothorn_address
}

output "ferrothorn_secret" {
  value     = module.ferrothorn.ferrothorn_secret
  sensitive = true
}
