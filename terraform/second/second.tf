provider "aws" {
  region = "ap-south-1"
}
resource "aws_security_group" "first_sg" {
  name        = "sg1"
  description = "added ssh"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "second_instance" {
  count                  = 2
  ami                    = "ami-0ad21ae1d0696ad58"
  instance_type          = "t2.micro"
  availability_zone      = "ap-south-1a"
  vpc_security_group_ids = ["sg1"]
  tags = {
    Name = "Web server"
  }
}
