output "routes" {
  value = {
    for key, service in var.services :
    key => {
      name : module.brane_api[key].name,
      port : module.brane_api[key].port,
      paths : service.paths,
      methods : length(service.methods) == 0 ? local.http_methods : service.methods,
    }
  }
}
