# Data Block

In Terraform, a data block is used to retrieve information from an external source and make it available to be used within Terraform configuration files. The information retrieved by a data block can be used to create resources, set variables, or perform other actions within Terraform.

A data block is defined using the keyword "data" followed by the name of the resource type, such as "data" "aws_iam_role" for an AWS IAM role, and then a set of configuration options. For example, we are using ami service to lookup Latest Ubuntu 20.04 AMI Image, the data block would look like this:


data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"]
}


Data blocks can retrieve information from various sources such as external APIs, file, local commands, and even from other Terraform states.

In addition to retrieving information, data blocks can also be used to filter, transform and output data.

Data blocks are read-only and do not make any changes to the external sources from which they retrieve information.

