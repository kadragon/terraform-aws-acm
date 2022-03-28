variable "sld" {
  description = "Second-Level Domain"
  type        = string
}

variable "domain" {
  description = "Service Providing Domain"
  type        = string
}

variable "region" {
  type    = string
  default = "us-east-1"
}
