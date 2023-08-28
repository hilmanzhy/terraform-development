locals {
    project = "perdana-wahana-sentosa-staging"
    region = "asia-southeast2"
    cloud_run_default_envs = {
        "NODE_ENV" = "production"
        "TARGET_ENV" = "staging"
    }
#    cloud_build_worker_pool = "projects/perdana-wahana-sentosa-staging/locations/asia-southeast2/workerPools/pws-cloudbuild-worker-pool"
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
