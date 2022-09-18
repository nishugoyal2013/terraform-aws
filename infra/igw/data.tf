data "aws_vpc" "selected" {
  count = length(var.igw)
  tags = {
    Name = var.igw[count.index].vpc_name
  }
}