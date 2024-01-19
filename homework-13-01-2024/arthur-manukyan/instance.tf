resource "aws_key_pair" "terraform_key_pair" {
  key_name   = "devops_key_california"
  public_key = file("C:/Users/User/.ssh/devops_key_california.pub")
}

resource "aws_instance" "terraform_instance" {
  ami                    = "ami-0c7217cdde317cfec"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.terraform_subnet.id
  key_name               = aws_key_pair.terraform_key_pair.key_name
  vpc_security_group_ids = [aws_security_group.terraform_security_group.id]

  tags = {
    Name = "Terraform-instance"
  }
}