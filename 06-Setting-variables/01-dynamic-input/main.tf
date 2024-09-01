variable "file_name" {
  description = "This is variable for filename"
  type        = string
  default     = "terraform.txt"
}

resource "local_file" "create_file" {
  content  = "Hi... filename is passed from a input variable"
  filename = var.file_name //input variables can be referred using var command
}

//terraform apply -var="file_name=new.txt" 
