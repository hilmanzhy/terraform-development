module "vpc" {
  source              = "../modules/gcp/create_vpc"
  project_id          = var.project_id
  region              = var.vpc_region
  vpc_name            = var.vpc_name
  serverless_name     = var.serverless_name
  subnetworks         = var.subnets
  routing_mode        = var.routing_mode
  serverless_cidr     = var.subnets[4].cidr
}

module "serverless_connector" {
  source              = "../modules/gcp/create_vpc"
  vpc_name            = var.vpc_name
  serverless_name     = var.serverless_name
  project_id          = var.project_id
  region              = var.vpc_region
  subnetworks         = var.subnets
  routing_mode        = var.routing_mode
  serverless_cidr     = var.subnets[4].cidr
}