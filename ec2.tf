resource "aws_security_group" "WebAppSec" {
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["217.42.29.254/32", "213.86.221.106/32"," 213.32.248.64/32"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["217.42.29.254/32"]
  }
  tags = {
    Name = var.security
  }
}

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
    prevent_destroy = true
  }
}