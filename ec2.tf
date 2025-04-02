module "ec2_instance" {
  source = "git:https://github.com/rogerslevi/terraform-aws-ec2-instance"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "WebApp.pem"
  monitoring             = true
  vpc_security_group_ids = ["sg-04644fd87e04c8aec"]
  subnet_id              = "subnet-04f5c9565c6fb850e"

  tags = {}
  lifecycle = {
    prevent_destroy = true
  }
}