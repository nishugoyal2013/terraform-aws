# resource "aws_security_group_rule" "sg-rule-01" {
#   type              = "ingress"
#   from_port         = 22
#   to_port           = 22
#   protocol          = "tcp"
#   cidr_blocks       = ["0.0.0.0/0"]
#   security_group_id = aws_security_group.sg1.id
# }

# resource "aws_security_group_rule" "sg-rule-02" {
#   type              = "egress"
#   from_port         = 0
#   to_port           = 0
#   protocol          = -1
#   cidr_blocks       = ["0.0.0.0/0"]
#   security_group_id = aws_security_group.sg1.id
# }