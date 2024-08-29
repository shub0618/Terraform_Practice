resource "aws_instance" "test" {
    ami = "ami-0ae8f15ae66fe8cda"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    key_name = "awsaws"
    
  tags = {
    Name = "dev-1"
  }
}

# here the state file will not be created in local it will be created in the aws s3 bucket