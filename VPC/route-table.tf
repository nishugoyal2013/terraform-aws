# resource "aws_route_table" "rt1" {
#   count = length(var.rtable)
#   vpc_id = aws_vpc.env-vpc-01[index(local.vpcs, var.rtable[count.index].vpc_name)].id

#   tags = {
#     Name = var.rtable[count.index].name
#   }
# }

# resource "aws_route_table_association" "a" {
#   subnet_id      = aws_subnet.main1.id
#   route_table_id = aws_route_table.rt1.id
# }

# resource "aws_route_table_association" "b" {
#   subnet_id      = aws_subnet.main2.id
#   route_table_id = aws_route_table.rt2.id
# }

# resource "aws_route" "r-igw" {
#   route_table_id            = aws_route_table.rt1.id
#   destination_cidr_block    = "0.0.0.0/0"
#   gateway_id = aws_internet_gateway.igw.id
# }

# resource "aws_route" "r-ngw" {
#   route_table_id            = aws_route_table.rt2.id
#   destination_cidr_block    = "0.0.0.0/0"
#   nat_gateway_id = aws_nat_gateway.ngw.id
# }