output "repo_urls" {
  value = { for key, value in aws_ecrpublic_repository.repos : key => value.repository_uri }
}
