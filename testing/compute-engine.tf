#terraform {
#  required_providers {
#    aws = {
#      source = "hashicorp/aws"
#    }
#  }
#}

#provider "aws" {
#  region = var.region
#  access_key = var.aws_access_key
#  secret_key = var.aws_secret_key
#}

module "ec2_instance" {
  source = "../modules/compute-engine" // Ganti dengan path ke direktori modul EC2 instance

  instance_count   = var.instance_count
  ami              = var.ami
  instance_type    = var.instance_type
  subnet_id        = var.subnet_id
  security_group   = aws_security_group.custom_sg.id
  key_pair         = var.key_pair
  tags             = var.tags
}
