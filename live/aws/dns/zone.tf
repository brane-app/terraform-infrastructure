resource "aws_route53_zone" "api" {
  name = local.zone_name
}

resource "aws_route53_record" "api" {
  name = local.zone_name

  records = aws_route53_zone.api.name_servers
  ttl     = 300
  type    = "A"
  zone_id = aws_route53_zone.api.zone_id
}
