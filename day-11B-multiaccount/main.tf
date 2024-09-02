# aws configure --profile  ( any name you want )to add another account
# using this the key will not be over written
provider "aws" {
    profile = "default" # mention the account name no need to specife the region it will take by default
    alias = "default"
}

provider "aws" {
    profile = "account2" # mention the other account name 
    alias = "account2"
    
  
}

resource "aws_s3_bucket" "test0" {
    bucket = "mumbai-hyd-bucket-shub"
    provider = aws.account2
  
}
resource "aws_s3_bucket" "test" {
    bucket = "us-hyd-bucket-shub" # if the provider not specifed it will be created in the deafult it self
  
}