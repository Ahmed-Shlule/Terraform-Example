provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-b2b55cd5"
  instance_type = "t2.micro"
}

