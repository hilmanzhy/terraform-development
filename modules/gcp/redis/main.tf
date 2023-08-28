resource "google_redis_instance" "redis" {
  provider = google
  project  = var.project_id
  region   = var.region

  name     = "my-redis-instance"
  tier     = "BASIC"
  location_id = var.region
  connect_mode = "PRIVATE_SERVICE_ACCESS"
  display_name = "My Redis Instance"
  # reserved_ip_range = ""

  authorized_network = "default"

  redis_configs = {
    maxmemory-policy = "allkeys-lru"
  }

  memory_size_gb = 1
}