resource "aws_route53_zone" "zone" {
  name = var.domain_name
}

resource "aws_route53_record" "prefix" {
  name = "api.${var.prefix}.${var.domain_name}"

  zone_id = aws_route53_zone.zone.zone_id
  type    = "A"

  alias {
    name                   = aws_lb.balancer.dns_name
    zone_id                = aws_lb.balancer.zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "prefix" {
  name = "file.${var.prefix}.${var.domain_name}"

  zone_id = aws_route53_zone.zone.zone_id
  type    = "A"

  alias {
    name                   = aws_lb.balancer.dns_name
    zone_id                = aws_lb.balancer.zone_id
    evaluate_target_health = true
  }
}
