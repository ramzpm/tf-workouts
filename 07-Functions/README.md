# Functions 

Terraform functions are a way to perform operations on variables and data in Terraform configurations. Functions allow you to manipulate data, make calculations, and perform other operations that are not possible with the standard resource and variable syntax.

Functions are a powerful feature that allows you to write more expressive, reusable, and maintainable configurations.

There are several built-in functions available in Terraform, such as:

- length(list): returns the number of elements in a list.
- lower(string): returns a copy of the input string in lowercase.
- upper(string): returns a copy of the input string in uppercase.
- concat(list, [separator]): concatenates a list of strings with an optional separator.
- element(list, index): returns the element at the specified index in a list.
- format(format, args): returns a string built by formatting the specified arguments according to the format string.
- replace(string, search, replace): replaces all occurrences of a string with another string.

You can use functions by calling them in expressions and passing the appropriate arguments.
For example, the following code uses the upper() function to convert a string to uppercase and assign it to a variable:

variable "name" {
  default = "john doe"
}

variable "uppercase_name" {
  default = upper(var.name)
}

It's also possible to create custom functions in Terraform, using Terraform's built-in function function to define the function name, its parameters, and the code to be executed.

It's important to note that functions can be used in various places in Terraform configurations such as variable and resource definition, outputs, provisioners, etc.

### Tip :

Use terraform apply -auto-approve to skip the input required by the terraform