# Variables 

Terraform variables are used to make the configuration more flexible and reusable. They allow you to pass values into the Terraform configuration and use them in various places such as resource properties, module inputs, and outputs.

There are two types of variables in Terraform:

- Input variables: These are variables that are defined in the Terraform configuration and can be set when running the terraform apply command, or passed in via a variable file. Input variables allow users to specify values for resources, modules, and other configurations.

- Output variables: These are variables that are defined in the Terraform configuration and are used to output the attributes of resources and modules, such as IP addresses and DNS names. Output variables can be used to pass values to other Terraform configurations or to other tools.

The syntax for defining an Input variable is as follows:

variable "VARIABLE_NAME" {
  type        = "TYPE"
  description = "DESCRIPTION"
  default     = DEFAULT_VALUE
}

"VARIABLE_NAME" is the name of the variable, which should be unique within the Terraform configuration.
"TYPE" is the type of the variable, such as "string", "number", "list", etc.
"DESCRIPTION" is an optional description of the variable, which will be displayed when the user runs the terraform plan command.
"DEFAULT_VALUE" is the default value of the variable, which will be used if the user does not specify a value when running the terraform apply command.

For example, a variable to specify the name of a file:

variable "local_filename" {
  type        = string
  description = "file name for the resource"
  default     = "file.txt"
}


The syntax for defining an output is as follows:

output "OUTPUT_NAME" {
  value = "OUTPUT_VALUE"
}
"OUTPUT_NAME" is the name of the output, which should be unique within the Terraform configuration.
"OUTPUT_VALUE" is the value of the output, which can be any valid Terraform expression.


For example, an output that displays the public IP address of an AWS EC2 instance:

output "ip_address" {
  value = aws_instance.example.public_ip
}