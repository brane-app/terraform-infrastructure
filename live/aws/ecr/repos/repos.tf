resource "aws_ecrpublic_repository" "repos" {
  for_each = var.services

  repository_name = "${var.app}-${var.environment}/${each.value}-service"

  catalog_data {
    about_text  = "Brane ${each.value} microservice"
    description = "Brane ${each.value} microservice"

    architectures     = ["x86-64"]
    operating_systems = ["Linux"]
  }
}
