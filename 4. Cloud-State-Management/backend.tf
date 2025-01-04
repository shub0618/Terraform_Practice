terraform {
  backend "s3" {
    bucket = "terraform-state-bucketttt"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}