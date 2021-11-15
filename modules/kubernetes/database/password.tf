resource "random_password" "database" {
  length  = 16
  special = false
}
