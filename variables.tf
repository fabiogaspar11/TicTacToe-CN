variable "external_port" {
 type = number
 description = "External port for nginx"
 default = 8080
}

variable "project_id" {
 default = "tictactoe-multiplayer-382914"
}

variable "database_uri" {
 default = "mongodb+srv://tictactoe:3Jtd4nOUS7Bz9no4@tictactoe.tl9ys90.mongodb.net/test"
}

variable "location" {
 default = "us-central1"
}

variable "region" {
 default = "us-central1"
}

variable "bucket_name" {
 default = "sharescores"
}



