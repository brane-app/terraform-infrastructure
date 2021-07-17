output "repo_urls" {
  value = { for key, value in aws_ecrpublic_repository.repos : key => value.repository_uri }
}

output "image_pusher_id_key" {
  value = aws_iam_access_key.image_pusher.id
}

output "image_pusher_secret_key" {
  value     = aws_iam_access_key.image_pusher.secret
  sensitive = true
}
