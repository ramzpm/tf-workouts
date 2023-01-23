variable "ami" {
  default = "ami-0ff8a91507f77f867"
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = "t2.micro"
}
