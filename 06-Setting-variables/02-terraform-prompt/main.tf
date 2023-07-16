
resource "local_file" "create_file" {
  content  = "Hi... filename is passed when prompted in apply coommand .."
  filename = var.file_name //variables which is not initialized will be prompted while applying the terraform apply command
}


variable "file_name" {
  description = "This is variable for filename not with a default value"
  type        = string
}


