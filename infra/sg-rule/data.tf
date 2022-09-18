data "aws_security_group" "selected" {
  count = length(var.sgr)
  tags = {
    Name = var.sgr[count.index].sg-name
  }
}