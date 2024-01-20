data "aws_ami" "ubuntu_nginx" {
  most_recent = true

  owners = ["self"]
  tags = {
    Name = "NginxImage"
  }
}