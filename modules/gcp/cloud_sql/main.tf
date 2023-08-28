resource "google_sql_database_instance" "instance" {
  name             = var.instance_name
  database_version = "MYSQL_5_7"
  project          = var.project_id
  region           = var.region

  settings {
    tier              = "db-n1-standard-1"
    activation_policy = "ALWAYS"

    ip_configuration {
      ipv4_enabled = true

      authorized_networks {
        name  = var.vpc_name
        value = var.vpc_cidr
      }
    }
  }
}
