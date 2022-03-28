output "certificate_arn" {
  value = module.acm_request_certificate.arn
}

output "zone_id" {
  value = data.aws_route53_zone.front.zone_id
}
