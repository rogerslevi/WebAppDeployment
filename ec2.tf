# module "ec2_instance" {
#   source = "/Users/lee/modules/ec2"

#   name = "single-instance"

#   instance_type          = "t2.micro"
#   key_name               = "WebApp.pem"
#   monitoring             = true
#   vpc_security_group_ids = ["sg-12345678"]
#   subnet_id              = "subnet-eddcdzz4"

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
#   lifecycle = {
#     prevent_destroy = true
#   }
# }