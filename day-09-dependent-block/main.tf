resource "aws_instance" "dependent" {
    ami = "ami-0ae8f15ae66fe8cda"
    instance_type = "t2.micro"
    key_name = "awsaws"
    depends_on = [ aws_s3_bucket.dependent ] # dpendent block 
}

resource "aws_s3_bucket" "dependent" {
    bucket = "s3nareshtadffrget"
}

# basd on the bucket creation only the aws instnace will be created not instnace first 
# this depnds is like "if you are created than only i will be created" 