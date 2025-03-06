variable "region" {
  default     = "eu-west-2"
  type        = string
  description = "Where the resources are deployed"
}

variable "ami" {
  default     = "ami-0acc77abdfc7ed5a6"
  type        = string
  description = "template used to launch my virtual machine"
}

variable "instance_type" {
  default     = "t2.micro"
  type        = string
  description = "proccessing power of instance"
}

variable "instance_name" {
  default     = "WebApp"
  type        = string
  description = "name of the instance"
}