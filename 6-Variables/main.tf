variable "local_filename" {
  type        = string
  description = "file name for the resource"
  default     = "file.txt" // Remove this line and try 
}


resource "local_file" "create_file" {
  content  = "Hi... Hello world!!!!"
  filename = var.local_filename
}


output "file_name" {
  value = local_file.create_file.filename
}
