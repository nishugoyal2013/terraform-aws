# resource "tls_private_key" "pk" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "aws_key_pair" "kp" {
#   key_name   = "tf_key"       # Create "myKey" to AWS!!
#   public_key = tls_private_key.pk.public_key_openssh
# }
# #   provisioner "local-exec" { # Create "myKey.pem" to your computer!!
# #     command = "echo '${tls_private_key.pk.private_key_pem}' > ./myKey.pem"
# #   }
# resource "local_file" "TF-key"{
#   content = tls_private_key.pk.private_key_pem
#   filename = "tfkey.pem"
#   file_permission = "0400"
# # }