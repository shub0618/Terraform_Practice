# configuration file for the existing instnace
resource "aws_instance" "dev" {
   # no need to give the information we are providing the skeleton frame through this block
   # after doing import all the information fills its self
}

#command 
# terraform import aws_instance.your instnace local name i-bhvijgvieuyr(unique instnace id)
# terraform import aws_instance.eks i-0e3f670f4ee619528
# state file will be created with the information of that instnace 

# after improting the file content changes into below

resource "aws_instance" "dev" {
    # after the import command map this values from the statefile created
    ami = "ami-066784287e358dad1"
    instance_type = "t2.micro"
    key_name = "awsaws"
    tags = {
      Name = "EKs"
    }
}
 # after mapping do the terraform plan to verify the configuration then after it matches
 # then only your in sync with the statefile 
 # finally you got the control of the instance and to other resorces as well and now you can make changes as well 