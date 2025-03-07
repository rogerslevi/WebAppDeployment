resource "aws_vpc" "WebApp_VPC" {
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = var.vpc
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.WebApp_VPC.id
  cidr_block = "10.0.0.0/27"
  tags = {
    Name = var.subnet
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.WebApp_VPC.id
  cidr_block = "10.0.0.32/27"
}

