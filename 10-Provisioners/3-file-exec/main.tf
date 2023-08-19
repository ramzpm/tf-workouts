provider "aws" {
  region = "us-west-2"
}


resource "aws_security_group" "example" {
  name_prefix = "natwest-"
}

resource "aws_security_group_rule" "allow_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] # Be cautious with this; restrict as needed
  security_group_id = aws_security_group.example.id
}

resource "aws_instance" "example" {
  ami                    = "ami-0688ba7eeeeefe3cd" # Amazon Linux 2 AMI
  instance_type          = "t2.micro"
  key_name               = "natwest-keypair"
  vpc_security_group_ids = [aws_security_group.example.id]

  tags = {
    Name = "Natwest"

  }
  provisioner "file" {
    source      = "main.tf"
    destination = "/tmp/main.tf"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("natwest-keypair.pem")
    host        = self.public_ip
  }
}
