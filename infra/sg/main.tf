resource "aws_security_group" "sg1" {
  count = length(var.sg)
  vpc_id = data.aws_vpc.selected[count.index].id

  tags = {
    Name = var.sg[count.index].name
  }
}