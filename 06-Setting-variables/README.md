# How to Set Terraform Environment Variable Values

The purpose of utilizing environment variables is to establish a separation between the essential infrastructure components and the specific instances that exist within different environments. Therefore, when planning or applying changes, it is crucial to assign values to these variables outside of the configuration.

There exist multiple methods for setting environment variables, each catering to different scenarios. Rather than favoring one approach over another, it is important to employ a combination of these options based on their respective use cases.


## Defining variable:
One way to provide default values for variables is by including them in the variable definition itself using the "default" keyword. This approach is beneficial when sensible defaults are available. However, it should not be used when the resource is environment-specific and needs to be separate for each environment.

## Runtime param in terraform commands plan/apply:
Another option is to use a Terraform prompt during the apply/plan command. If no default value is specified for a variable, Terraform will pause the apply/plan command and prompt the user to input the values. This method is useful for testing configurations and experimenting with different values. However, in a production environment, using this option may result in inconsistent infrastructure across runs.

## creating tfvars file:
Another approach is to use *.tfvars files. Multiple files can be created, each corresponding to a specific environment (e.g., staging.tfvars and production.tfvars). During the plan/apply command, the appropriate file can be specified using the -var-file option. This method is useful when multiple environment variables need to be set, and the values are not sensitive, allowing them to be stored in the code repository.

## Setting shell variables:
Terraform also allows setting values through shell variables with the TF_VAR_ prefix. By specifying a shell variable like TF_VAR_env=production, Terraform will read it and assign the value "production" to the "env" variable. This approach is commonly used in CI/CD workflows and is particularly suitable for providing environment secrets that should not be stored in plain text format within the code repository.

## Using var attribute in terraform commands:
Alternatively, values can be provided through the -var option during the plan/apply command. This method serves as an alternative means to supply values to environment variables. It is particularly handy when there are only a few variables to set, and the configuration is being applied non-interactively, such as in CI/CD or through a script.