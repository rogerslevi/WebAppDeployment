provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.72.1"
    }
  }
}

terraform {
  required_version = ">=1.5"
  backend "s3" {
    bucket = "my-terraform-state-levi"
    key    = "state/terraform.tfstate"
    region = "eu-west-2"
  }
}

