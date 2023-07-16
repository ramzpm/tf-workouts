variable "aws_region" {
  type        = string
  description = "AWS region for the resource"
  default     = "US-EAST-1"
}

variable "aws_desc" {
  type        = string
  description = "AWS region for the resource"
  default     = "AWS is one of the leader in cloud providers"
}

variable "aws_instance_type" {
  type        = string
  description = "Instance type"
  default     = "t2.micro"
}

variable "list_strings" {
  type        = list(string)
  description = "list of string type"
  default     = ["one", "two", "three"]
}

variable "list_strings_numbers" {
  type        = list(string)
  description = "list of string type"
  default     = ["1", "2", "3"]
}


output "lower_region" {
  value = lower(var.aws_region)
}

output "upper_instance_type" {
  value = upper(var.aws_instance_type)
}

output "length_list_strings" {
  value = length(var.list_strings)
}

output "first_element" {
  value = element(var.list_strings, 0)
}

output "concat_elements" {
  value = concat(var.list_strings, var.list_strings_numbers)
}


output "element_at" {
  value = element(var.list_strings, 0)
}


output "replace_string" {
  value = replace(var.aws_desc, "AWS", "GCP")
}
