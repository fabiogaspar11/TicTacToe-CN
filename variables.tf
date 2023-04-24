variable "external_port" {
 type = number
 description = "External port for nginx"
 default = 8080
}

variable "project_id" {}

variable "database_uri" {}

variable "bucket_name" {}

variable "location" {
 default = "us-central1"
}

variable "region" {
 default = "us-central1"
}
