
module "cloudsql" {
  source       = "../modules/gcp/cloud_sql"
  project_id = var.project_id
  region     = var.vpc_region
  db_name    = var.db_name
  db_user    = var.db_user
  db_password = var.db_password
  # private_network = var.subnets[3].name
  vpc_name     = var.vpc_name
  vpc_cidr     = var.subnets[3].name
  instance_name = var.db_name
}