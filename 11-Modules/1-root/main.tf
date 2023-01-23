provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "root_module_example" {
  bucket = "my-sample-bucket"
}
