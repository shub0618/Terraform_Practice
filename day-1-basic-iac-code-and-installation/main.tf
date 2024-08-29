# creating the resources and calling the variables 
resource "aws_instance" "name" {
  ami = var.ami
  instance_type = var.type
  key_name = var.key

}