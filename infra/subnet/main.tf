resource "aws_subnet" "subnet" {
    count = length(var.subnet)
    vpc_id = data.aws_vpc.selected[count.index].id
    cidr_block = var.subnet[count.index].cidr_block

    tags = {
      Name = var.subnet[count.index].name
    }
}