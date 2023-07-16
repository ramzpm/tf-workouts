# Introduction

Welcome to our Infrastructure as Code (IaC) repository! In this repository, you will find all the code necessary to define, deploy, update, and destroy our infrastructure.

# What is Infrastructure as Code?

- IaC is a method of managing infrastructure using code, rather than manual configuration.
- This approach treats all aspects of operations as software, including physical hardware such as servers. 
- It is a key concept in DevOps and enables the management of various aspects of the infrastructure through code, including servers, databases, networks, log files, application configuration, documentation, automated tests, and deployment processes.

## Categories of IaC tools:

| Categories | 
| ------ | 
| Ad hoc scripts |
| Configuration management tools |
| Server templating tools |
| Orchestration tools |
| Provisioning tools |


### Ad hoc scripts

Scripts are the easiest way to automate a task is to create a script that performs that task. This involves breaking down the task into individual steps, writing code in a scripting language such as Bash/Python/Ruby to execute those steps, and running the script on a server.

Managing a large collection of Bash scripts can quickly become overwhelming and difficult to maintain. While ad-hoc scripts can be useful for small and specific tasks, An IaC tool offers better organization and maintainability for your infrastructure.


### Configuration management tools

Chef, Puppet, and Ansible are all configuration management tools, which means that they are designed to install and manage software on existing servers

Ansible offers a number of advantages:

- Ansible ensures consistency and predictability through practices such as documentation, organized file structure, clearly labeled parameters, and secure management of sensitive information.

- Ad-hoc scripts are intended for use on a single, local computer, while Ansible and other configuration management tools are optimized for managing multiple remote servers.

### Server templating tools 

An alternative to configuration management that has been growing in popularity recently are server templating tools such as Docker, Packer, and Vagrant. Instead of launching a bunch of servers and configuring them by running the same code on each one, the idea behind server templating tools is to create an image of a server that captures a fully self-contained “snapshot” of the operating system (OS), the software, the files, and all other relevant details.

Server templating is a key component of the shift to immutable infrastructure.The idea behind immutable infrastructure is similar: once you’ve deployed a server, you never make changes to it again.


### Orchestration tools 

Managing the VMs and container are complex and these tasks such as auto discovery, auto scaling and auto healing are handled using orchestration tools such as Kubernetes, Marathon/Mesos, Amazon Elastic Container Service (Amazon ECS), Docker Swarm, and Nomad


### Provisioning tools 

Provisioning tools like Terraform, CloudFormation, OpenStack Heat, and Pulumi are responsible for creating the infrastructure like servers, databases, caches, load balancers, queues, monitoring, subnet configurations, firewall settings, routing rules, Secure Sockets Layer (SSL) certificates, and more. On the other hand, configuration management, server templating, and orchestration tools are used to define the code that runs on each server that has been provisioned.

