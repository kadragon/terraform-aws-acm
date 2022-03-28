provider "aws" {
  region = "us-east-1"
  alias  = "us"
}

data "aws_route53_zone" "front" {
  name         = var.domain
  private_zone = false
}

# create acm and explicitly set it to us-east-1 provider
module "acm_request_certificate" {
  source = "cloudposse/acm-request-certificate/aws"
  providers = {
    aws = aws.us
  }

  zone_id = data.aws_route53_zone.front.zone_id

  # Cloud Posse recommends pinning every module to a specific version
  version                           = "0.16.0"
  domain_name                       = var.domain
  subject_alternative_names         = var.sub_domains
  process_domain_validation_options = true
  ttl                               = "300"
}

output "name" {
  value = data.aws_route53_zone.front.zone_id
}
