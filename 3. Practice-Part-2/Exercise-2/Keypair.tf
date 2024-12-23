resource "aws_key_pair" "dove-key" {
  key_name   = "dove-key"
  public_key = " DO THE ssh-keygen AND COPY THE CONTENT OF THE .PUB HERE"
}
