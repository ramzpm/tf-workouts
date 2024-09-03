provider "aws" {
  region = "us-west-2" # Choose the appropriate region
}

resource "aws_instance" "example" {
  ami           = "ami-0688ba7eeeeefe3cd" # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  key_name      = "natwest-keypair" # Replace with your existing EC2 key pair

  tags = {
    Name = "ExampleInstance"
  }
}
