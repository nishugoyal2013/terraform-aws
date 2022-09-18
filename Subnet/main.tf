data "aws_vpc" "selected" {
  tags = {
    Name = "env-vpc-d-01"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = data.aws_vpc.selected.id
  cidr_block = "10.1.2.0/24"
  tags = {
    Name = "abc-subnet"
  }
}