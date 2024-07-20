provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "first" {
  ami           = "ami-01376101673c89611"
  instance_type = "t2.micro"
  tags = {
    Name = "bavin"
    IP   = "Private"
  }
}
