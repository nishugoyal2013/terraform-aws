resource "aws_internet_gateway" "igw" {
  count = length(var.igw)
  vpc_id = aws_vpc.env-vpc-01[index(local.vpcs, var.igw[count.index].vpc_name)].id

  tags = {
    Name = var.igw[count.index].name
  }
}