resource "aws_vpc" "env-vpc-01" {
  count = length(var.vpc)
  cidr_block = var.vpc[count.index].cidr_block
  instance_tenancy = var.vpc[count.index].instance_tenancy
  enable_dns_support = var.vpc[count.index].enable_dns_support

  tags = {
    Name = var.vpc[count.index].name
  }
}