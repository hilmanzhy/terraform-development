module "my_vpc" {
  source = "../modules/vpc-hilmanzhy"

  vpc_name          = var.vpc_name
  cidr_block        = var.cidr_block
  subnet_cidr_block = var.subnet_cidr_block
}
