# Generates a secure private k ey and encodes it as PEM
resource "tls_private_key" "week10_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
# Create the Key Pair
resource "aws_key_pair" "week10_key" {
  key_name   = "privatekeypair"  
  public_key = tls_private_key.week10_key.public_key_openssh
}
# Save file
resource "local_file" "ssh_key" {
  filename = "keypair.pem"
  content  = tls_private_key.week10_key.private_key_pem
}
