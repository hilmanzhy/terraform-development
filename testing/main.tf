terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module "my_vpc" {
  source = "../modules/vpc-hilmanzhy"

  vpc_name          = var.vpc_name
  cidr_block        = var.cidr_block
  subnet_cidr_block = var.subnet_cidr_block
}
