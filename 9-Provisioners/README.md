# Provisioners

In Terraform, a "provisioner" is a configuration block that is used to run scripts or other actions on a resource after it is created. These scripts can be used to install software, configure settings, or perform other tasks on the newly-created resource. 

Terraform supports several different types of provisioners, including "local-exec", "remote-exec", "file", and "chef" provisioners. Additionally, you can also use "null_resource" to run provisioners in terraform.