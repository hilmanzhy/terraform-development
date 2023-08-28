module "redis_instance" {
  source = "../modules/poc/redis"
  project_id = var.project_id
  region     = var.vpc_region
}