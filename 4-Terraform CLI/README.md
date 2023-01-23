# How to install terraform in local

Installing Terraform on a local machine is a straightforward process, here are the general steps to follow:

- Download the Terraform binary: Go to the Terraform website (https://www.terraform.io/downloads.html) and download the appropriate binary for your operating system.

- Unzip the binary: Unzip the binary and move it to a directory that is included in your system's PATH. This allows you to run the terraform command from any location on your machine.

- Verify the installation: Open a command prompt or terminal and run the command "terraform -v" to verify that Terraform is properly installed. You should see the version number of Terraform that you have installed.

- Set up your environment: Before you can use Terraform, you need to configure your provider credentials and other settings. This can typically be done by setting environment variables on your machine, such as AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY for the AWS provider.(Skip this step for now this will covered when we use AWS)

- Run Terraform: Now you can use the terraform command to create, update, and delete your infrastructure. You can use the command terraform init to initialize a Terraform configuration, terraform plan to preview the changes that will be made, and terraform apply to create or update the infrastructure.


For every new folder you work on do a terraform init and start executing the changes..
