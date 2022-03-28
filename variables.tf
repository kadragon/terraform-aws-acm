variable "domain" {
  description = "root domain name"
  type        = string
}

variable "sub_domains" {
  description = "sub domain list"
  type        = list(string)
}
