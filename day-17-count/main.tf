# case -1 or first example 
resource "aws_instance" "test" {
    ami = "ami-0ae8f15ae66fe8cda"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    key_name = "awsaws"
    count ="2"

  tags = {
    Name = "dev-1" 
  }
}
# output 2 resource will created and the index count will start from 0

# case-2 you want different name not same name then
resource "aws_instance" "test" {
    ami = "ami-0ae8f15ae66fe8cda"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    key_name = "awsaws"
    count ="2"
    # 
    
  tags = {
    Name = "web-${count.index}"
  }
}
# output will be 2 instnace created with web-0 and web-1 ad the index starts from 0

# case-3
# calling the count through variables by giving the name
resource "aws_instance" "test" {
    ami = "ami-0ae8f15ae66fe8cda"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    key_name = "awsaws"
    count = length(var.test) #it will print 3
    # calling through length function   

  tags = {
    Name= var.test[count.index]
  }
}

variable "test" {
    type = list(string)
    default = [ "dev", "test", "prod"]
}
# it will follow as per the count only like it will take asending or desending order no mideel value
# so no consitency provided by count 
# it can only be used to create resources but cannot be used to modify in between the list so not recomemded for modifying