locals {
    project = "YOUR-PROJECT"
    region = "asia-southeast2"
    cloud_run_default_envs = {
        "NODE_ENV" = "production"
        "TARGET_ENV" = "staging"
    }
}

provider "google" {
    credentials = file("../config/${var.global_project_service_account}")
#    project = "${var.vpc_project}"
    project = "${var.project_id}"
    region = "${var.vpc_region}" 
}

provider "google-beta" {
    credentials = file("../config/${var.global_project_service_account}")
    project = "${var.vpc_project}"
    region = "${var.vpc_region}"
}
