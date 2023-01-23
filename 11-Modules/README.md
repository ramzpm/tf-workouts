# Modules in terraform

A module is a container for multiple resources that are used together. A module can be called multiple times within the same configuration, or even within other modules, allowing for reusability of Terraform code.

Modules can also accept input variables, allowing for easy customization of the resources contained within the module. Modules can be defined in the same configuration file or in a separate files with .tf extension. Modules can also be shared publicly on Terraform Registry, which is a collection of community-contributed and officially-maintained modules.


Different types of modules that can be used in Terraform. Some examples include:

- Root modules: These are the top-level modules in a Terraform configuration and define the resources that will be created or managed.

- Child modules: These are modules that are called within another module, allowing for modularization and reusability of code.

- Official modules: These are modules that are officially maintained by HashiCorp, the company behind Terraform. They can be found in the Terraform Registry and are generally considered to be well-tested and reliable.

- Community modules: These are modules that are contributed by the Terraform community and can be found in the Terraform Registry. They may not be officially maintained by HashiCorp, but can still be useful for specific use cases.

- Custom modules: These are modules that you create yourself and use in your own Terraform configurations.