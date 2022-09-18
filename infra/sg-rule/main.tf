resource "aws_security_group_rule" "sgr1" {
  count = length(var.sgr)
  security_group_id = data.aws_security_group.selected[count.index].id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sgr2" {
  count = length(var.sgr)
  security_group_id = data.aws_security_group.selected[count.index].id
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = -1
  cidr_blocks       = ["0.0.0.0/0"]
}