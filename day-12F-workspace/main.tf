resource "aws_instance" "test" {
    ami = "ami-0ae8f15ae66fe8cda"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    key_name = "awsaws"
  
  tags = {
    Name = "test"
  }
}

# all the workspaces commands are of terraform only no changes in the code its only a cli approach only 