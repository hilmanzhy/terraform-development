resource "google_cloudbuild_worker_pool" "private_worker_pool" {
  name          = var.pwp_name
  location      = var.location
  project       = var.project_id

  worker_config {
    machine_type = var.machine_type
    disk_size_gb = 100
  }

  network_config {
    peered_network   = var.peered_network
  }
}
