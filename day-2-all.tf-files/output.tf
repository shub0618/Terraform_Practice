# if you want to print any values from cloud to the vs code we can take this reference
output "publicip" {
    value = aws_instance.dev.public_ip
    description = "printing the public ip"
  
  
}
output "privateip" {
    value = aws_instance.dev.private_ip
    sensitive = true
  
}