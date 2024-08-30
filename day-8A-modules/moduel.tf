module "dev" {
    source = "../day-2-all.tf-files"
    ami_id = "ami-0ae8f15ae66fe8cda"
    instance_type ="t2.micro"
    key_name ="awsaws" 
    
}

# the line number 3 4 5 are the values that will insert in the day-2 variable.tf
# give only values that are present in that variable block not any new values.
# the same amount of values should be given in this as present in values say example you have 100 values
# you can give 100 and less than it like 34 56 28 or equal to it but cannot give 101 or greater than that

# What is a Module?
# A module in Terraform is a collection of .tf files in a directory.
# Every Terraform configuration has at least one module, known as the root module. This is the directory where Terraform commands are run.
# Modules can be nested, meaning one module can call another module.