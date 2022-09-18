resource "aws_nat_gateway" "ngw" {
  count = length(var.ngw)
  allocation_id = aws_eip.eip[index(local.eips, var.ngw[count.index].eip_name)].id
  subnet_id     = aws_subnet.main[index(local.subnets, var.ngw[count.index].subnet_name)].id

  tags = {
    Name = var.ngw[count.index].name
  }
}