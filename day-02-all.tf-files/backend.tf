# sample code for understanding 
terraform {
  backend "s3" {
    bucket = " any name you want"
    key    = "if key presnt than that name"
    region = "us-east-1"
  }
}