# Comparison of Terraform and other Infrastructure as Code (IaC) tools

Choosing an Infrastructure as Code (IaC) tool can be a challenging task as many of them have similar features and capabilities and are open-source. Additionally, many of them offer commercial support. It can be difficult to determine the best criteria for selecting one tool over another, especially if you haven't used them all. 

## Immutable Infrastructure

Immutable infrastructure is a software development approach where the infrastructure components (such as servers, databases, and load balancers) are treated as disposable and are replaced rather than modified. This approach is in contrast to traditional infrastructure management where servers are updated and patched in-place.

 With immutable infrastructure, new versions of the infrastructure components are deployed as new instances, rather than modifying the existing ones. This approach has many benefits, such as increased reliability, improved security, and easier rollbacks. Additionally, it aligns well with modern deployment practices such as continuous integration and continuous delivery (CI/CD).

 ## Provisioning tool

As you saw earlier, Chef, Puppet, and Ansible are all configuration management tools, whereas CloudFormation, Terraform, OpenStack Heat, and Pulumi are all provisioning tools.

Although the distinction is not entirely clear cut, given that configuration management tools can typically do some degree of provisioning (e.g., you can deploy a server with Ansible) and that provisioning tools can typically do some degree of configuration (e.g., you can run configuration scripts on each server you provision with Terraform), you typically want to pick the tool that’s the best fit for your use case.

## Declarative Language

Chef and Ansible encourage a procedural style in which you write code that specifies, step by step, how to achieve some desired end state.

Terraform, CloudFormation, Puppet, OpenStack Heat, and Pulumi all encourage a more declarative style in which you write code that specifies your desired end state, and the IaC tool itself is responsible for figuring out how to achieve that state.

