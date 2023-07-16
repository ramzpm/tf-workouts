variable "file_name" {
  type        = string
  description = "File name with Validations"

  validation {
    condition     = length(var.file_name) > 4 && substr(var.file_name, 0, 4) == "tem-"
    error_message = "File name is invalid"
  }
}

resource "local_file" "create_file" {
  content  = "Hi... filename is passed from a input variable"
  filename = var.file_name
}
