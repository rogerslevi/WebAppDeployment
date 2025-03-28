resource "aws_instance" "WebApp_instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  security_groups             = [aws_security_group.WebAppSec.name]
  key_name                    = "WebApp"
  associate_public_ip_address = true
  tags = {
    Name = var.instance_name
  }
  lifecycle {
    prevent_destroy = false
  }
}