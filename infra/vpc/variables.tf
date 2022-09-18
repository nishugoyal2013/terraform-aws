variable "vpc" {
  type = list(object({
    name = string
    cidr_block = string
    instance_tenancy = string
    enable_dns_support = bool
    enable_dns_hostnames = bool
  }))
}