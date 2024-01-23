

resource "tls_private_key" "example_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
resource "aws_key_pair" "example_key" {
  key_name   = "example-key"
  public_key = tls_private_key.example_key.public_key_openssh
}
