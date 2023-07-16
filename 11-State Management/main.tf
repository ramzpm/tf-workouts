terraform {
  backend "s3" {
    bucket         = "my-terraform-state"
    key            = "terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "my-terraform-lock"
  }
}
//S3  and Dynamo has resources has to be created b4 this invocation.

//S3 will give you remote backend support and Dynamo will enable you state locking


resource "aws_instance" "test_instance" {
  ami           = "ami-0688ba7eeeeefe3cd"
  instance_type = "t2.micro"
}
