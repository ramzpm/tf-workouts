# tf-workouts

Lesson 1 : Hello world 

We are using local provider to create a txt file and hardcoded the content in the tf file..


terraform init ( Run all commands from the hello-world directory)

This will initialize the provider and local provider will be downloaded in to your machine

terraform plan 

This is also called as a dry-run command which helps us to understand what changes will be made after running the apply command.

plan will not modify any resources..

terraform apply 

This will actually make the changes to the resources provided in the config file.

-auto-approve will ignore the runtime question and proceed with the apply 


