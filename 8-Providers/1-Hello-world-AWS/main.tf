provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "test_instance" {
  ami           = "ami-0688ba7eeeeefe3cd"
  instance_type = "t2.micro"
}
