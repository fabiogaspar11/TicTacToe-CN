#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_v2_service

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_v2_service_iam

#https://console.cloud.google.com/projectselector2/iam-admin/serviceaccounts?supportedpurview=project
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
provider "docker" {}
provider "google" {
  credentials = file("auth.json")
  project = var.project_id
  region  = "europe-west2"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "docker_image" "mongo" {
  name         = "mongo"
  keep_locally = false
}

resource "google_container_registry_image" "client-image" {
  name         = "gcr.io/tictactoe-multiplayer-382914/client-image"
  image_tag    = "latest"
}

resource "google_container_registry_image" "server-image" {
  name         = "gcr.io/tictactoe-multiplayer-382914/server-image"
  image_tag    = "latest"
}

resource "google_cloud_run_v2_service" "default" {
  name     = "cloudrun-service"
  location = "europe-west2"
  ingress  = "INGRESS_TRAFFIC_ALL"

  template {
    # containers {
    #   image = "mongo:latest" #Se quisermos meter uma imagem nova temos de colocar a imagem num registo como por exemplo pela google como fizemos na segunda aula
    #   ports {
    #     container_port = 27017
    #   }
    # }
  containers {
    image = "gcr.io/tictactoe-multiplayer-382914/client-image:v1" #Se quisermos meter uma imagem nova temos de colocar a imagem num registo como por exemplo pela google como fizemos na segunda aula
    ports {
      container_port = 8080
    }
  }
    #  containers {
    #   image = "gcr.io/tictactoe-multiplayer-382914/server-image:v1" #Se quisermos meter uma imagem nova temos de colocar a imagem num registo como por exemplo pela google como fizemos na segunda aula
    #   ports {
    #     container_port = 3000
    #   }
    # }
  }
}

data "google_iam_policy" "admin" {
  binding {
    role = "roles/viewer"
    members = [
      "user:fabiocordeirogaspar@gmail.com",
    ]
  }
}

resource "google_cloud_run_v2_service_iam_policy" "policy" {
  project     = google_cloud_run_v2_service.default.project
  location    = google_cloud_run_v2_service.default.location
  name        = google_cloud_run_v2_service.default.name
  policy_data = data.google_iam_policy.admin.policy_data
}
