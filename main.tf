provider "aws" {
  region = var.region
  alias  = "provider"
}

data "aws_route53_zone" "front" {
  name         = var.sld
  private_zone = false
}

# create acm and explicitly set it to us-east-1 provider
module "acm_request_certificate" {
  source = "cloudposse/acm-request-certificate/aws"
  providers = {
    aws = aws.provider
  }

  zone_id = data.aws_route53_zone.front.zone_id

  # Cloud Posse recommends pinning every module to a specific version
  version     = "0.16.0"
  domain_name = var.domain
  subject_alternative_names         = var.san
  process_domain_validation_options = true
  ttl                               = "300"
}

