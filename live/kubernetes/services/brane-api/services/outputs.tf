output "routes" {
  value = {
    for key, service in var.services :
    key => {
      name : module.brane_api[key].name,
      port : module.brane_api[key].port,
      path : service.path,
    }
  }
}
