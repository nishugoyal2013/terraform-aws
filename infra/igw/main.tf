resource "aws_internet_gateway" "igw1" {
  count = length(var.igw)
  vpc_id = data.aws_vpc.selected[count.index].id

  tags = {
    Name = var.igw[count.index].name
  }
}