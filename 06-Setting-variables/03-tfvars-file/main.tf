
variable "file_name" {
  description = "filename not with a default value"
}


resource "local_file" "create_file" {
  content  = "Hi... filename is fetched from tfvar command."
  filename = var.file_name //variables are initialized from the tfvars
}
//terraform apply -var-file="input.tfvars"



