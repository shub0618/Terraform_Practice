# this method if the source is present in gitbhub repo
module "any name you want" {
source = "github.com/shu1827/terraform_practice/tree/main/day-2-all.tf-files"  
ami_id = "ami-0ae8f15ae66fe8cda"
instance_type ="t2.micro"
key_name ="aws_key"
}