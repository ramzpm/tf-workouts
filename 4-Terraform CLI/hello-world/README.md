## Terraform Command Line Interface (CLI)

It is the primary tool used to interact with Terraform. It allows you to create, update, and delete infrastructure resources described in Terraform configuration files. The most commonly used commands in the Terraform CLI include:

- terraform init: This command is used to initialize a Terraform configuration, it will download and install the provider plugins, and create a local state file.

- terraform plan: This command is used to create an execution plan. It shows what Terraform will do before actually doing it. It is a dry-run command that shows what Terraform will do without making any changes to the infrastructure.

- terraform apply: This command is used to create or update the infrastructure resources as defined in the Terraform configuration files.

- terraform show: This command is used to view the Terraform state or plan files in a human-readable format.

- terraform destroy: This command is used to destroy the resources managed by Terraform. This command deletes all the resources that Terraform created and removes the state file.

- terraform state: This command is used to manage the state file that Terraform uses to keep track of the resources it manages. It can be used to list, move, and delete resources, and other state-related operations.

- terraform fmt: This command is used to format the Terraform configuration files, it makes the code more readable and maintainable.

- terraform validate: This command is used to validate the syntax of the Terraform configuration files. It checks for any syntax errors or issues that would prevent Terraform from running correctly. 


### How to execute the your first terraform code

Create a directory terraform-workouts (any name will do) copy and paste the main.tf

Type "terraform init" in the terminal this will download all the required provisioners

Type "terraform plan" and this will tell you what terraform is going to do.

Type "terraform apply" this will execute the code present in main.tf

Once executed successfully this will create a helloworld.txt file in the current directory 


Use "terraform destroy" to delete the resources created using the terraform and for our case this will be the text file. Try the other terraform commands highlighted above.