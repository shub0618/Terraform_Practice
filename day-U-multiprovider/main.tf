# case-1
provider "aws" {
    region = "us-east-1"
  
}

resource "aws_s3_bucket" "us" {
    bucket = "gavxgxvjhbcjh"
}
# this bucket will be created in us east 1

provider "aws" {
    region = "ap-south-1"
    alias = "us"
}

resource "aws_s3_bucket" "us" {
    bucket = "gavxgxvjhbcjh"
}

# case-2
provider "aws" {
    region = "us-east-1"
  
}

provider "aws" {
    region = "ap-south-1"
    alias = "samp"
  
}
resource "aws_s3_bucket" "us" {
    bucket = "gavxgxvjhbcjh"
    provider = aws.samp
  
}

resource "aws_s3_bucket" "mumbai" {
    bucket = "jshxsjxkjsx"
  
}