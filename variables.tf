variable "domain" {
  description = "root domain name"
  type        = string
}

variable "sub_domains" {
  description = "sub domain list"
  type        = list(string)
}

variable "region" {
  type    = string
  default = "us-east-1"
}
