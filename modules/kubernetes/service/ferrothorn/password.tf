resource "random_password" "database" {
  length  = 32
  special = false
}

resource "random_password" "ferrothorn" {
  length  = 32
  special = false
}
