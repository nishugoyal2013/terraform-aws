# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

# resource "aws_instance" "web" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = var.ec2.instance_type
#   subnet_id   = aws_subnet.main1.id
#   security_groups = [aws_security_group.sg1.id]
#   associate_public_ip_address = var.ec2.associate_public_ip_address
#   key_name = var.ec2.key_name

#   credit_specification {
#     cpu_credits = var.ec2.cpu_credits
#   }

#   tags = {
#     Name = var.ec2.name
#   }

#   root_block_device {
#     volume_type = "gp2"
#     volume_size = "50"
#     delete_on_termination = "true"
#     kms_key_id = null
#   }
  
  
# }


