resource "aws_vpc" "vpc1" {
  count = length(var.vpc)
  cidr_block = var.vpc[count.index].cidr_block
  instance_tenancy = var.vpc[count.index].instance_tenancy
  enable_dns_support = var.vpc[count.index].enable_dns_support
  enable_dns_hostnames = var.vpc[count.index].enable_dns_hostnames

  tags = {
    Name = var.vpc[count.index].name
  }
}