resource "aws_security_group" "sg" {
  count = length(var.sg)
  name        = var.sg[count.index].name
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.env-vpc-01[index(local.vpcs, var.sg[count.index].vpc_name)].id

  tags = {
    Name = var.sg[count.index].name
  }
}