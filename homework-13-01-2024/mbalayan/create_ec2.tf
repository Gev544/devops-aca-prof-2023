resource "aws_instance" "terraform_ec2" {
  ami                    = "ami-0fc5d935ebf8bc3bc"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true
  key_name = aws_key_pair.example_key.key_name
  tags = {
    Name = "ec2-terraform"
  }
}