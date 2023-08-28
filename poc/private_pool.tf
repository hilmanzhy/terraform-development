locals {
  subnet    = "pws-poc-staging"
}

module "pwp" {
  source       = "../modules/poc/private_pool"
  project_id   = var.project_id
  region       = var.vpc_region
  location     = var.vpc_region
  pwp_name     = var.pwp_name
  subnet_id    = var.subnet_id
  machine_type = var.machine_type
  peered_network = var.subnets[2].name
}