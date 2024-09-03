
provider "aws" {
  region = "us-west-2"
}

# Terraform Data Block - To Lookup Latest Ubuntu 20.04 AMI Image
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"]
}


resource "aws_security_group" "example" {
  name_prefix = "natwest-"
}

resource "aws_security_group_rule" "allow_port" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.example.id
}

resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.example.id]

  # User data script to install Apache web server
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Hello, World from $(hostname -f)</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "web-instance"
  }
}

# Output the public IP address of the EC2 instance
output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.web.public_ip
}
