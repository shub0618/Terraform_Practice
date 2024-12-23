resource "aws_instance" "prod" {
    ami = "ami-0ae8f15ae66fe8cda"
    instance_type = "t2.micro"
    key_name = "the key you generated"
    subnet_id = aws_subnet.public.id
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    user_data = file("test.sh")
    
    tags = {
      Name = "myec2"
    }

}

