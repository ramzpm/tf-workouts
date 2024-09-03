
provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-natwest-12345"

  tags = {
    Name        = "My S3 Bucket"
    Environment = "Dev"
  }
}
