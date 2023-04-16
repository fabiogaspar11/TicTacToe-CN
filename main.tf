terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
    google = {
      source  = "hashicorp/google"
      version = "4.58.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_cloud_run_v2_service" "server" {
  name     = "server"
  location = var.location
  ingress  = "INGRESS_TRAFFIC_ALL"

  template {
    containers {
      image = "gcr.io/${var.project_id}/github.com/fabiogaspar11/tictactoe-multiplayer-server:latest" 
      env {
        name = "DATABASE_URI"
        value = var.database_uri
      }
      env {
        name = "BUCKET_NAME"
        value = var.bucket_name
      }
    }
  }
}

resource "google_cloud_run_v2_service" "client" {
  name     = "client"
  location = var.location
  ingress  = "INGRESS_TRAFFIC_ALL"

  template {
    containers {
      image = "gcr.io/${var.project_id}/github.com/fabiogaspar11/tictactoe-multiplayer-client:latest"
      env {
        name = "SERVER_URI"
        value = google_cloud_run_v2_service.server.uri
      }
    }
  }
}

data "google_iam_policy" "public" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_v2_service_iam_policy" "server_policy" {
  project     = google_cloud_run_v2_service.server.project
  location    = google_cloud_run_v2_service.server.location
  name        = google_cloud_run_v2_service.server.name
  policy_data = data.google_iam_policy.public.policy_data
}

resource "google_cloud_run_v2_service_iam_policy" "client_policy" {
  project     = google_cloud_run_v2_service.client.project
  location    = google_cloud_run_v2_service.client.location
  name        = google_cloud_run_v2_service.client.name
  policy_data = data.google_iam_policy.public.policy_data
}

resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.location
  force_destroy = false
}