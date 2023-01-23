
# Resources

In Terraform, resources are the basic building blocks used to create, update, and delete infrastructure components such as servers, load balancers, and databases. Each resource block in a Terraform configuration defines the desired state of a single infrastructure component, such as the number of virtual machines, the size of a load balancer, or the name of a database.

A resource block has the following syntax:

resource "PROVIDER_TYPE" "NAME" {
  [CONFIGURATION ...]
}

For example, a resource block for generating a random text would look like this:

resource "random_string" "random_gen" {
  length = 16
}

In this example, "random_string" is the resource type, "random_gen" is the name, and  "length" is the configuration option.

Once you have defined resources in your Terraform configuration, you can use the Terraform CLI commands terraform plan and terraform apply to create, update, and delete the resources according to the desired state defined in the configuration files.