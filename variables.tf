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

variable "san" {
  description = "Subject Alternative Name"
  type        = list(string)
  default     = []
}
