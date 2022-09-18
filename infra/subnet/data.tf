data "aws_vpc" "selected" {
  count = length(var.subnet)
  tags = {
    Name = var.subnet[count.index].vpc_name
  }
}