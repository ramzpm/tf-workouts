Terraform CLI defines the following optional arguments for variable declarations:

default - A default value which then makes the variable optional.
type - This argument specifies what value types are accepted for the variable.
description - This specifies the input variable's documentation.
validation - A block to define validation rules, usually in addition to type constraints.
sensitive - Limits Terraform UI output when the variable is used in configuration.
nullable - Specify if the variable can be null within the module.
