resource "local_file" "create_file" {
  content  = "Hi... filename is fetched from tfvar command."
  filename = var.file_name //variables which is not initialized will be prompted while applying the terraform apply command
}

variable "file_name" {
  description = "filename not with a default value"
}

