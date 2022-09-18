data "aws_vpc" "selected" {
  count = length(var.sg)
  tags = {
    Name = var.sg[count.index].vpc_name
  }
}