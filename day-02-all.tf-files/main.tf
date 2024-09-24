# day-2 covering all the blocks of the terraform
resource "aws_instance" "dev" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    tags={
        Name = "test" #any name you can give this acts as a tags 
    }  
}

