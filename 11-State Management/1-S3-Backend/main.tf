
provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "my-terraform-state-natwest" //create bucket before running
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}


resource "aws_instance" "example" {
  ami           = "ami-0688ba7eeeeefe3cd"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo 'Instance created! Check the S3 bucket'"
  }
}
