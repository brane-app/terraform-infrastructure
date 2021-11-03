output "addresses" {
  value = {
    for it in module.brane_api :
    it.service => {
      "service" : it.service
      "address" : it.address,
      "port" : it.port,
    }
  }
}
