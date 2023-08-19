
provider "aws" {
  region = "us-west-2"
}


terraform {
  backend "s3" {
    bucket         = "my-terraform-state-natwest"
    key            = "terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-lock"
  }
}
// Create terraform-lock LockID as partition key

resource "aws_instance" "example" {
  ami           = "ami-0688ba7eeeeefe3cd"
  instance_type = "t2.micro"
}
