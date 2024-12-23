# calling exixting subnet
data "aws_subnet" "selected" {
  filter {
    name   = "tag:Name"
    values = ["prvt-sub-1"] # give the name of the subnet
  }
}

# calling ami id also through data source block
# chances are default ami aur creating ami
data "aws_ami" "amzlinux" { 
  most_recent = true
  owners = [ "amazon" ] # defalut ami
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm-*-gp2" ]
  }
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}

resource "aws_instance" "prod" {
    ami = data.aws_ami.amzlinux.id # calling from line 11
    instance_type = "t2.micro"
    key_name = "awsaws"
    #subnet_id = "subnet-024ce993fe7f02d19"
    subnet_id = data.aws_subnet.selected.id # line 1 to see the name local name
}