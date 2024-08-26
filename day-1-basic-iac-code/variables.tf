variable "ami" {
    description = "inserting ami values to main.tf"
    type = string
    default = " ami id if present "
  
}

variable "type" {
    description = "inserting instance type to main.tf"
    type = string
    default = " type of the instnace like t2.micro or nano or other "
  
}
variable "key" {
    type = string
    default = " key name if created "
  
}
