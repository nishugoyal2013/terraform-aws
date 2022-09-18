resource "aws_subnet" "main" {
  count = length(var.subnet)
  vpc_id     = aws_vpc.env-vpc-01[index(local.vpcs, var.subnet[count.index].vpc_name)].id
  #vpc_id     = aws_vpc.env-vpc-01[var.subnet[count.index].vpc_in].id
  cidr_block = var.subnet[count.index].cidr_block

  tags = {
    Name = var.subnet[count.index].name
  }
}