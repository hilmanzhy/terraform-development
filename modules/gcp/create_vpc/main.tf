resource "google_compute_network" "vpc_network" {
  project                 = var.project_id
  name                    = var.vpc_name
  routing_mode            = var.routing_mode
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnets" {
  count           = length(var.subnetworks)
  project       = var.project_id
  name            = var.subnetworks[count.index].name
  ip_cidr_range   = var.subnetworks[count.index].cidr
  region          = var.region
  network         = google_compute_network.vpc_network.self_link
}

resource "google_vpc_access_connector" "serverless_connector" {
  name            = var.serverless_name
  project         = var.project_id
  region          = var.region
  network         = var.vpc_name
  ip_cidr_range   = var.serverless_cidr
}