resource "aws_eip" "eip" {
  count = length(var.eip)
  vpc              = var.eip[count.index].vpc

  tags = {
    Name = var.eip[count.index].name
}
}