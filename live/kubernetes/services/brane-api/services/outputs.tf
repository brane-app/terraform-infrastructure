output "addresses" {
  value = {
    for service in module.brane_api :
    service.service => {
      "address" : service.address,
      "port" : service.port,
    }
  }
}
