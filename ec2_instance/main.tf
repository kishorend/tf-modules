provider "aws" {
  region = "us-east-1" # Update with your desired AWS region
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}
