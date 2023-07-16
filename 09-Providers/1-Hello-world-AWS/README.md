# Create your first AWS resource using terraform

Pre requisites :

Setting up AWS credentials in the system environment variable is a way to securely provide your access keys to Terraform without hardcoding them in the configuration files. Here are the steps to set up AWS credentials in the system environment variable:

- Log in to the AWS Management Console.
- Go to the IAM (Identity and Access Management) page.
- Click on Users and then select your user.
- Click on the Security credentials tab, and then click on the Create access key button.
- Download the CSV file that contains your access key and secret access key, or copy the keys to a safe place.
- Open a terminal or command prompt and set the following environment variables, replacing YOUR_ACCESS_KEY and YOUR_SECRET_KEY with the keys from the CSV file or the keys that you copied:

export AWS_ACCESS_KEY_ID=YOUR_ACCESS_KEY
export AWS_SECRET_ACCESS_KEY=YOUR_SECRET_KEY


Verify that the credentials are set correctly by running the following command:

echo $AWS_ACCESS_KEY_ID
echo $AWS_SECRET_ACCESS_KEY

You should see the values of the access key and secret key that you set.

It's important to remember that these environment variables will only be set for the current session, so you'll need to set them again if you open a new terminal or command prompt. You can also set these variables permanently in your shell profile file(.bashrc, .bash_profile, .zshrc, etc) to avoid setting them every time.

In this example, the provider block specifies that we will be using the AWS provider and the region will be "us-west-2".

- The resource block creates an EC2 instance using the specified Amazon Machine Image (AMI) and instance type.
- Run terraform init to initialize the Terraform configuration and download the AWS provider plugin.
- Run terraform plan to see a preview of the changes that will be made to the infrastructure.
- Run terraform apply to create the EC2 instance in the specified region.
- You can check the created resources in the AWS management console.