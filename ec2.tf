resource "aws_instance" "simple_web_app" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = "WebApp"
  tags = {
    Name = var.instance_name
  }

}